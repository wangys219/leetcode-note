# 位1的个数

## 解法一

### js实现

```
/**
 * @param {number} n - a positive integer
 * @return {number}
 */
var hammingWeight = function (n) {
  let ans = 0

  while (n) {
    if (n % 2 === 1) ans++
    n = Math.floor(n / 2)
  }

  return ans
};
```
