# 罗马数字转整数

## 解法一

### js实现

```
/**
 * @param {string} s
 * @return {number}
 */
var romanToInt = function (s) {
  let result = 0
  let last
  
  for (let i = 0; i < s.length; i++) {
    if ((last === 'I' && (s[i] === 'V' || s[i] === 'X')) || (last === 'X' && (s[i] === 'L' || s[i] === 'C')) || (last === 'C' && (s[i] === 'D' || s[i] === 'M'))) {
      last = `${last}${s[i]}`
      continue
    }
    result += toInt(last)
    last = s[i]
  }
  result += toInt(last)

  return result
};

function toInt (s) {
  result = 0
  switch (s) {
    case 'I':
      result = 1
      break
    case 'IV':
      result = 4
      break
    case 'V':
      result = 5
      break
    case 'IX':
      result = 9
      break
    case 'X':
      result = 10
      break
    case 'XL':
      result = 40
      break
    case 'L':
      result = 50
      break
    case 'XC':
      result = 90
      break
    case 'C':
      result = 100
      break
    case 'CD':
      result = 400
      break
    case 'D':
      result = 500
      break
    case 'CM':
      result = 900
      break
    case 'M':
      result = 1000
      break
    default:
  }

  return result
}
```
