
Homemade Diff
----

A tiny and slow LCS Diff exercise.

### Original

Based on this anwser:

```coffee
lcs = (A, B) ->
  result = 0
  if A.length is 0 or B.length is 0
    result
  else if A[0] is B[0]
    result = 1 + lcs(A[1..], B[1..])
  else
    result = Math.max(lcs(A, B[1..]), lcs(A[1..], B))
```

http://segmentfault.com/q/1010000000367833/a-1020000000440616

### Todo

Diff on Cirru Syntax Tree.

### Test

```
cirru-script tests/simple.cirru
```

### License
