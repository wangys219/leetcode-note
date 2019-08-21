# 买卖股票的最佳时机 II

## 解法一

### js实现

```
/**
 * @param {number[]} prices
 * @return {number}
 */
var maxProfit = function (prices) {
  if (!prices.length) return 0
  let buy = prices[0]
  let sold = prices[0]
  let profit = 0

  for (let i = 0; i < prices.length; i++) {
    if (prices[i] > sold) {
      sold = prices[i]
    } else {
      profit += sold - buy
      sold = prices[i]
      buy = prices[i]
    }
  }
  profit += sold - buy
  return profit
};
```
