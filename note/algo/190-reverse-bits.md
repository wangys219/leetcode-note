# 颠倒二进制位

## 解法一

### js实现

```
/**
 * @param {number} n - a positive integer
 * @return {number} - a positive integer
 */
var reverseBits = function (n) {
  n = n.toString(2)
  while (n.length < 32) {
    n = `0${n}`
  }

  const ans = []
  for (let i = n.length - 1; i >=0; i--) {
    ans.push(n[i])
  }

  return Number.parseInt(ans.join(''), 2)
};
```
