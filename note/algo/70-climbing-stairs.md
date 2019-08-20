# 爬楼梯

## 解法一

### js实现

```
/**
 * @param {number} n
 * @return {number}
 */
var climbStairs = function (n) {
  if (n === 1) return 1
  let last = 1
  let cur = 2
  for (let i = 2; i < n; i++) {
    let tmp = cur
    cur += last
    last = tmp
  }
  return cur
};
```
