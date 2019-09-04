# 中心对称数

## 解法一

### js实现

```
/**
 * @param {string} num
 * @return {boolean}
 */
var isStrobogrammatic = function (num) {
  if (/[23457]/.test(num)) return false
  if (num.length % 2 !== 0 && !/[018]/.test(num[Math.floor(num.length / 2)])) return false
  for (let i = 0; i < Math.floor(num.length / 2); i++) {
    if (!/[01869]/.test(num[i])) return false
    let check
    switch (num[i]) {
      case '0':
        check = '0'
        break
      case '1':
        check = '1'
        break
      case '8':
        check = '8'
        break
      case '6':
        check = '9'
        break
      case '9':
        check = '6'
        break
    }
    if (num[num.length - i - 1] !== check) return false
  }

  return true
};
```
