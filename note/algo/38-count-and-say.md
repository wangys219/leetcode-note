# 报数

## 解法一

### js实现

```
/**
 * @param {number} n
 * @return {string}
 */
var countAndSay = function (n) {
  let ans = '1'
  
  for (let i = 1; i < n; i++) {
    const newArr = []
    let tmp = ans[0]
    let count = 1
    for (let j = 1; j < ans.length; j++) {
      if (ans[j] === tmp) {
        count++
        continue
      }
      newArr.push(count, tmp)
      tmp = ans[j]
      count = 1
    }
    newArr.push(count, tmp)
    ans = newArr.join('')
  }

  return ans
};
```
