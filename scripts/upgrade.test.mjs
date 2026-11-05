import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { updater } from '../js-out/text-diff.updater.mjs';
import { decode_op, store } from '../js-out/text-diff.schema.mjs';

const tags = c.init_tags(['content', 'states']);
const read = (value, key) => c.option_$o_unwrap(c.get(value, key));
const apply = (source, op) => updater(source, c.option_$o_unwrap(decode_op(c.parse_cirru_edn(op))), 'test-op', 0);

test('content update preserves cursor state and leaves original store unchanged', () => {
  const updated = apply(store, ':: :content |hello');
  assert.equal(read(updated, tags.content), 'hello');
  assert.equal(read(store, tags.content), '');
  assert.equal(read(updated, tags.states), read(store, tags.states));
});

test('hydration preserves the persisted map format', () => {
  const updated = apply(store, ':: :hydrate-storage $ {} (:content |restored) (:states $ {})');
  assert.equal(read(updated, tags.content), 'restored');
  const roundTrip = c.parse_cirru_edn(c.format_cirru_edn(updated));
  assert.equal(read(roundTrip, tags.content), 'restored');
});

test('cursor updates preserve content', () => {
  const populated = apply(store, ':: :content |keep');
  const updated = apply(populated, ':: :states ([] :editor) $ {} (:draft |typing)');
  assert.equal(read(updated, tags.content), 'keep');
  const editor = read(read(updated, tags.states), c.init_tags(['editor']).editor);
  assert.equal(read(read(editor, c.init_tags(['data']).data), c.init_tags(['draft']).draft), 'typing');
  for (const [key, value] of [['|中文', '中文'], ['0', 0]]) {
    const keyed = apply(populated, `:: :states ([] :editor ${key}) false`);
    const nested = read(read(read(keyed, tags.states), c.init_tags(['editor']).editor), value);
    assert.equal(read(nested, c.init_tags(['data']).data), false);
    assert.equal(read(keyed, tags.content), 'keep');
  }
  assert.throws(() => apply(populated, ':: :states ([] :editor false) $ {}'), /CursorKey/);
});
