# 打家劫舍

## 解法一:DP

### js实现

```
/**
 * @param {number[]} nums
 * @return {number}
 */
var rob = function (nums) {
  let sum1 = 0
  let sum2 = 0
  let ans = 0
  for (let i = 0; i < nums.length; i++) {
    ans = Math.max(sum1 + nums[i], sum2)
    sum1 = sum2
    sum2 = ans
  }

  return ans
};
```
