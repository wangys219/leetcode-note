# 查询无效交易

## 解法一：暴力

### js实现

```
/**
 * @param {string[]} transactions
 * @return {string[]}
 */
var invalidTransactions = function (transactions) {
  const ans = []

  for (let i = 0; i < transactions.length; i++) {
    const cur = transactions[i].split(',')
    let check = false

    if (cur[2] > 1000) {
      ans.push(transactions[i])
      continue
    }

    for (let m = i + 1; m < transactions.length; m++) {
      const tmp = transactions[m].split(',')
      if (tmp[0] === cur[0] && Math.abs(tmp[1] - cur[1]) <= 60 && tmp[3] !== cur[3]) {
        check = true
        break
      }
    }

    if (check) {
      ans.push(transactions[i])
      continue
    }

    for (let n = 0; n < ans.length; n++) {
      const tmp = ans[n].split(',')
      if (tmp[0] === cur[0] && Math.abs(tmp[1] - cur[1]) <= 60 && tmp[3] !== cur[3]) {
        check = true
        break
      }
    }

    if (check) {
      ans.push(transactions[i])
      continue
    }
  }

  return ans
};
```
