# Excel表列序号

## 解法一

### js实现

```
/**
 * @param {string} s
 * @return {number}
 */
var titleToNumber = function (s) {
  let ans = 0
  let count = 0
  while (count < s.length) {
    const cur = s.charCodeAt(s.length - count - 1)
    ans += (cur - 'A'.charCodeAt(0) + 1) * Math.pow(26, count)
    count++
  }

  return ans
};
```
