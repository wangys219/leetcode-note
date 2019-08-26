# 比较字符串最小字母出现频次

## 解法一：暴力

### js实现

```
/**
 * @param {string[]} queries
 * @param {string[]} words
 * @return {number[]}
 */
var numSmallerByFrequency = function (queries, words) {
  const ans = []
  const q = []
  const w = []

  for (let i = 0; i < queries.length; i++) {
    q.push(f(queries[i]))
  }

  for (let i = 0; i < words.length; i++) {
    w.push(f(words[i]))
  }

  for (let i = 0; i < q.length; i++) {
    let count = 0
    for (let j = 0; j < w.length; j++) {
      if (w[j] > q[i]) count++
    }
    ans.push(count)
  }

  return ans
};

function f (s) {
  const tmp = []

  for (let i = 0; i < s.length; i++) {
    const index = s.charCodeAt(i) - 'a'.charCodeAt(0)
    if (tmp[index]) tmp[index]++
    else tmp[index] = 1
  }

  for (let i = 0; i < 26; i++) {
    if (tmp[i]) return tmp[i]
  }
}
```
