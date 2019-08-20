# 最大子序和

## 解法一：DP

### js实现

```
/**
 * @param {number[]} nums
 * @return {number}
 */
var maxSubArray = function (nums) {
  let sum = 0
  let ans = 0

  for (let i = 0; i < nums.length; i++) {
    if (sum > 0) {
      sum += nums[i]
    } else {
      sum = nums[i]
    }
    ans = Math.max(ans, sum)
  }

  return ans
};
```
