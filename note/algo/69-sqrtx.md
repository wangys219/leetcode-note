# x 的平方根

## 二分法

### js实现

```
/**
 * @param {number} x
 * @return {number}
 */
var mySqrt = function (x) {
  let left = 1
  let right = x
  let mid
  while (left < right) {
    mid = Math.floor((left + right) / 2)
    if (mid ** 2 < x) left = mid + 1
    else right = mid
  }
  return right ** 2 === x ? right : right - 1
};
```
