# 最大唯一数

## 解法一:hashmap

时间复杂度 O(n)

### js实现

```
/**
 * @param {number[]} A
 * @return {number}
 */
var largestUniqueNumber = function (A) {
  const hashmap = new Map()
  for (let i = 0; i < A.length; i++) {
    if (!hashmap.has(A[i])) hashmap.set(A[i], 1)
    else hashmap.set(A[i], hashmap.get(A[i]) + 1)
  }

  let max = -1
  for (let [key, value] of hashmap) {
    if (value === 1 && key > max) max = key
  }

  return max
};
```
