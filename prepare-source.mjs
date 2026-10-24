import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {mkdirSync,readFileSync,writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync(process.env.DIFF_QUERY_CLI||'calcit',args,{encoding:'utf8',maxBuffer:20*1024*1024,stdio:['ignore','pipe','ignore']});
const q=(...args)=>JSON.parse(run('query',...args,'--format','json')).data;
mkdirSync('acceptance',{recursive:true});
function inventory(){
  const ds=[];
  for(const ns of q('ns').namespaces){
    const names=run('query','defs',ns).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);
    assert.equal(names.length,q('ns',ns).definition_count);
    for(const n of names)ds.push(q('def',`${ns}/${n}`));
  }
  assert.equal(ds.length,18);assert.equal(ds.reduce((n,d)=>n+d.tests.length,0),0);
  assert.equal(q('ns').namespaces.length,6);return ds;
}
if(process.argv[2]==='inventory'){
  const ds=inventory();writeFileSync('acceptance/reviewed.json',JSON.stringify(ds,null,2));
  console.log(JSON.stringify({definitions:ds.length,tests:ds.reduce((n,d)=>n+d.tests.length,0),namespaces:q('ns').namespaces}));process.exit(0);
}
assert.equal(run('-v').trim(),'0.30.1');run('docs','agents','--contract');
const config=q('config'),before=inventory();assert.deepEqual(before,JSON.parse(readFileSync('acceptance/reviewed.json','utf8')));
const expected=structuredClone(before),container=expected.find(d=>d.id==='text-diff.comp.container/comp-container');
let count=0;
function walk(n){
  if(!Array.isArray(n))return n;
  const a=n.map(walk);
  if(a[0]==='merge'){assert.ok(['ui/global','ui/expand'].includes(a[1]));a[0]='.merge';count++;}
  return a;
}
container.code=walk(container.code);assert.equal(count,2);
const operations=[['edit','def',container.id,'--overwrite','--input-format','json-ast','--code',JSON.stringify(container.code)]];
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));writeFileSync('acceptance/operations.json',JSON.stringify(operations,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
assert.deepEqual(inventory(),expected,'All definitions:only2mergeheads,originalvariadicargs/callbacks/schema/FFI/HUD/recovery/storage/operations preserved');assert.deepEqual(q('config'),config);
writeFileSync('acceptance/after.json',JSON.stringify(expected,null,2));writeFileSync('acceptance/snapshot-blob.txt',execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}));
