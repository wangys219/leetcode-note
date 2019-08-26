# 计数质数

## 解法一：厄拉多塞筛法

### js实现

```
/**
 * @param {number} n
 * @return {number}
 */
var countPrimes = function (n) {
  const arr = []
  let count = 0
  for (let i = 2; i < n; i++) {
    if (!arr[i]) {
      count++
      for (let j = i; j < n; j += i) {
        if (j % i === 0) arr[j] = 1
      }
    }
  }

  return count
};
```
