# 会议室

## 解法一：暴力

### js实现

```
/**
 * @param {number[][]} intervals
 * @return {boolean}
 */
var canAttendMeetings = function (intervals) {
  const hashset = new Set()
  
  for (let i = 0; i < intervals.length; i++) {
    for (let j = intervals[i][0]; j <= intervals[i][1]; j++) {
      if (hashset.has(j)) return false
      hashset.add(j)
    }
  }

  return true
};
```
