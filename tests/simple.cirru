
var
  diff $ require :../src/diff

var a :11111
var b :121111122

console.log $ JSON.stringify
  diff (a.split :) (b.split :)
  , null 2
