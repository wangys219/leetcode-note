# 最长公共前缀

## 解法一

### js实现

```
/**
 * @param {string[]} strs
 * @return {string}
 */
var longestCommonPrefix = function (strs) {
  let result = ''

  if (strs.length === 0) return result
  for (let i = 0; i < strs[0].length; i++) {
    const cur = strs[0][i]
    for (let j = 0; j < strs.length; j++) {
      if (strs[j][i] !== cur) return result
    }
    result = `${result}${cur}`
  }

  return result
};
```
