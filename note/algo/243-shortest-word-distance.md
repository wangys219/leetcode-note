# 最短单词距离

## 解法一

### js实现

```
/**
 * @param {string[]} words
 * @param {string} word1
 * @param {string} word2
 * @return {number}
 */
var shortestDistance = function (words, word1, word2) {
  let index1 = -1
  let index2 = -1
  let min = Infinity

  for (let i = 0; i < words.length; i++) {
    if (word1 !== words[i] && word2 !== words[i]) continue
    if (word1 === words[i]) index1 = i
    if (word2 === words[i]) index2 = i
    if (index1 > -1 && index2 > -1) {
      const dis = Math.abs(index1 - index2)
      if (min > dis) min = dis
    }
  }
  
  return min
};
```
