# 宝石与石头

## js实现

```
/**
 * @param {string} J
 * @param {string} S
 * @return {number}
 */
var numJewelsInStones = function (J, S) {
  const hashset = new Set(J)
  let result = 0
  for (let i = 0; i < S.length; i++) {
    if (hashset.has(S[i])) result++
  }

  return result
};
```

```
/**
 * @param {string} J
 * @param {string} S
 * @return {number}
 */
var numJewelsInStones = function(J, S) {
    var result;
    result = S.match(new RegExp('[' + J + ']', 'g'));
    return result === null ? 0 : result.length;
};
```
