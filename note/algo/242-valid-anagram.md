# 有效的字母异位词

## 解法一

### js实现

```
/**
 * @param {string} s
 * @param {string} t
 * @return {boolean}
 */
var isAnagram = function (s, t) {
  const hashmap = new Map()
  for (let i = 0; i < s.length; i++) {
    if (!hashmap.has(s[i])) hashmap.set(s[i], 1)
    else hashmap.set(s[i], hashmap.get(s[i]) + 1)
  }

  for (let i = 0; i < t.length; i++) {
    if (!hashmap.has(t[i])) hashmap.set(t[i], -1)
    else hashmap.set(t[i], hashmap.get(t[i]) - 1)
  }

  for (const val of hashmap.values()) {
    if (val) return false
  }

  return true
};
```
