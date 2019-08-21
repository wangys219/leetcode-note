# Excel表列名称

## 解法一

### js实现

```
/**
 * @param {number} n
 * @return {string}
 */
var convertToTitle = function (n) {
  let ans = ''

  while (n) {
    let index = n % 26
    n = Math.floor(n / 26)
    if (index === 0) {
      index += 26
      n--
    }
    ans = `${String.fromCharCode('A'.charCodeAt(0) + index - 1)}${ans}`
  }

  return ans
};
```
