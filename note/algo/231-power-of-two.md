# 2的幂

## 解法一:暴力法

### js实现

```
/**
 * @param {number} n
 * @return {boolean}
 */
var isPowerOfTwo = function (n) {
  if (n === 0) return false
  while (n) {
    if (n === 1) return true
    if (n % 2 !== 0) return false
    n = n / 2
  }

  return true
};
```
