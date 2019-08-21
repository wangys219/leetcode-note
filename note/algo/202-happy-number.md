# 快乐数

## 解法一

### js实现

```
/**
 * @param {number} n
 * @return {boolean}
 */
var isHappy = function (n) {
  const visited = new Set()

  while (true) {
    if (n === 1) return true
    if (visited.has(n)) break
    visited.add(n)
    let sum = 0
    while (n) {
      sum += Math.pow(n % 10, 2)
      n = Math.floor(n / 10)
    }
    n = sum
  }

  return false
};
```
