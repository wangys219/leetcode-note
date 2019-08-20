# 整数反转

## 解法一

### js实现

```
/**
 * @param {number} x
 * @return {number}
 */
var reverse = function (x) {
  let o = x.toString()
  let n = []
  let c

  for (let i = 0; i < o.length; i++) {
    if (/[\+-]/.test(o[i])) {
      c = o[i]
      continue
    }
    n.unshift(o[i])
  }
  if (c) n.unshift(c)
  const result = Number.parseInt(n.join(''), 10)

  if (result < -Math.pow(2, 31) || result > Math.pow(2, 31) - 1) return 0
  return result
};
```
