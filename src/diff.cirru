
var manualConcat $ \ (a b)
  a.concat b

var search $ \ (count records a b)
  var
    isAEnd $ is a.length 0
    isBEnd $ is b.length 0
    bothEnd $ and isAEnd isBEnd
  case true
    bothEnd $ [] $ {} (:count count) (:records records)
    isAEnd
      var first $ . b 0
      var rest $ b.slice 1
      = records $ records.concat $ []
        {} (:op :+) (:y first.y) (:value first.value)
      search count records ([]) rest
    isBEnd
      var first $ . a 0
      var rest $ a.slice 1
      = records $ records.concat $ []
        {} (:op :-) (:y first.y) (:value first.value)
      search count records rest ([])
    else
      var aFirst $ . a 0
      var bFirst $ . b 0
      var aRest $ a.slice 1
      var bRest $ b.slice 1
      cond (is aFirst.value bFirst.value)
        search (+ count 1) records aRest bRest
        manualConcat
          search count
            records.concat $ [] $ {} (:op :-)
              :y aFirst.y
              :value aFirst.value
            , aRest b
          search count
            records.concat $ [] $ {} (:op :+)
              :y bFirst.y
              :value bFirst.value
            , a bRest

var bind $ \ (v k)
  k v

var findMaxHelper $ \ (list memory method)
  cond (> list.length 0)
    findMaxHelper (list.slice 1)
      bind (. list 0) $ \ (first)
        cond (? memory)
          cond (> (method memory) (method first)) memory first
          , first
      , method
    , memory

= module.exports $ \ (a b)
  var listA $ a.map $ \ (x index)
    {} (:y index) (:value x)
  var listB $ b.map $ \ (x index)
    {} (:y index) (:value x)

  var methods $ search 0 ([]) listA listB
  findMaxHelper methods null $ \ (x) x.count
