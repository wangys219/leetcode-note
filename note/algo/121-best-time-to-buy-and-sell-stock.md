# 买卖股票的最佳时机

## 解法一

### js实现

```
/**
 * @param {number[]} prices
 * @return {number}
 */
var maxProfit = function (prices) {
  let max = 0

  for (let i = 0; i < prices.length; i++) {
    let tmp = 0
    for (let j = i + 1; j < prices.length; j++) {
      tmp = Math.max(prices[j] - prices[i], tmp)
    }
    max = Math.max(tmp, max)
  }

  return max
};
```

## 解法二

### js实现

```
/**
 * @param {number[]} prices
 * @return {number}
 */
var maxProfit = function (prices) {
  let max = 0
  let min = prices[0]

  for (let i = 1; i < prices.length; i++) {
    max = Math.max(prices[i] - min, max)
    min = Math.min(min, prices[i])
  }

  return max
};
```
