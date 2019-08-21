# 阶乘后的零

## 解法一

### js实现

```
/**
 * @param {number} n
 * @return {number}
 */
var trailingZeroes = function (n) {
  let count = 0

  while (n) {
    n = Math.floor(n / 5)
    count += n
  }

  return count
};
```
