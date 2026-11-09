import assert from 'node:assert/strict';
import test from 'node:test';
import * as c from '../js-out/calcit.core.mjs';
import { updater } from '../js-out/text-diff.updater.mjs';
import { decode_store, Op, store } from '../js-out/text-diff.schema.mjs';
import { Control, apply_control, new_reel, record_op } from '../js-out/reel.typed.mjs';

const tags = c.init_tags(['content', 'states', 'hydrate-storage', 'editor', 'data', 'draft', 'toggle', 'display?', 'records']);
const read = (value, key) => c.option_$o_unwrap(c.get(value, key));
const op = (tag, ...values) => c._PCT__$o__$o_(Op, tag, ...values);
const apply = (source, tag, ...values) => updater(source, op(tag, ...values), 'test-op', 0);

test('content update preserves cursor state and leaves original store unchanged', () => {
  const updated = apply(store, tags.content, 'hello');
  assert.equal(read(updated, tags.content), 'hello');
  assert.equal(read(store, tags.content), '');
  assert.equal(read(updated, tags.states), read(store, tags.states));
});

test('hydration preserves the persisted map format', () => {
  const restored = decode_store(c.parse_cirru_edn('{} (:content |restored) (:states $ {})'));
  const updated = apply(store, tags['hydrate-storage'], restored);
  assert.equal(read(updated, tags.content), 'restored');
  const roundTrip = c.parse_cirru_edn(c.format_cirru_edn(updated));
  assert.equal(read(roundTrip, tags.content), 'restored');
});

test('cursor updates preserve content', () => {
  const populated = apply(store, tags.content, 'keep');
  const updated = apply(populated, tags.states, c._$L_(tags.editor), c._$n__$M_(tags.draft, 'typing'));
  assert.equal(read(updated, tags.content), 'keep');
  const editor = read(read(updated, tags.states), tags.editor);
  assert.equal(read(read(editor, tags.data), tags.draft), 'typing');
  for (const key of ['中文', 0]) {
    const keyed = apply(populated, tags.states, c._$L_(tags.editor, key), false);
    const nested = read(read(read(keyed, tags.states), tags.editor), key);
    assert.equal(read(nested, tags.data), false);
    assert.equal(read(keyed, tags.content), 'keep');
  }
  assert.throws(() => apply(populated, tags.states, c._$L_(tags.editor, false), c._$n__$M_()), /CursorKey|declared type/);
});

test('typed Reel control toggles the panel without adding an edit', () => {
  const before = record_op(updater, new_reel(store), op(tags.content, 'hello'), 'test-op', 0);
  const after = apply_control(updater, before, c._PCT__$o__$o_(Control, tags.toggle));
  assert.equal(read(after, tags['display?']), !read(before, tags['display?']));
  assert.equal(read(after, tags.records), read(before, tags.records));
});
