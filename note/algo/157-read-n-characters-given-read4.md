# 用 Read4 读取 N 个字符

## 解法一

### js实现

```
/**
 * Definition for read4()
 * 
 * @param {character[]} buf Destination buffer
 * @return {number} The number of actual characters read
 * read4 = function(buf) {
 *     ...
 * };
 */

/**
 * @param {function} read4()
 * @return {function}
 */
var solution = function (read4) {
  /**
   * @param {character[]} buf Destination buffer
   * @param {number} n Number of characters to read
   * @return {number} The number of actual characters read
   */
  return function (buf, n) {
    let result = 0
    const count = Math.ceil(n / 4)
    for (let i = 0; i < count; i++) {
      let tmp = []
      read4(tmp)
      while (tmp.length) {
        if (n === 0) break
        const cur = tmp.shift()
        result++
        buf.push(cur)
        n--
      }
    }
    return result
  };
};
```
