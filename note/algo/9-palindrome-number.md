# 回文数

## 解法一

### js实现

```
/**
 * @param {number} x
 * @return {boolean}
 */
var isPalindrome = function (x) {
  if (x < 0) return false
  const list = []
  while (x) {
    list.push(x % 10)
    x = Math.floor(x / 10)
  }
  while (list.length) {
    if (list[0] !== list[list.length - 1]) return false
    list.shift()
    list.pop()
  }
  return true
};
```
