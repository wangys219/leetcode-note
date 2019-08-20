# 最后一个单词的长度

## 解法一

### js实现

```
/**
 * @param {string} s
 * @return {number}
 */
var lengthOfLastWord = function (s) {
  let arr = s.split(' ')
  if (!arr.length) return 0
  for (let i = arr.length - 1; i >= 0; i--) {
    if (arr[i]) return arr[i].length
  }
  return 0
};
```
