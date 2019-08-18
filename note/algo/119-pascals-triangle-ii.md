# 杨辉三角 II

## 解法一：

### js实现

```
/**
 * @param {number} rowIndex
 * @return {number[]}
 */
var getRow = function (rowIndex) {
  let tmp = []
  let res = []

  for (let i = 0; i <= rowIndex; i++) {
    tmp = res
    res = []
    for (let j = 0; j <= i; j++) {
      if (j === 0 || j === i) {
        res[j] = 1
        continue
      }
      res[j] = tmp[j - 1] + tmp[j]
    }
  }

  return res
};
```
