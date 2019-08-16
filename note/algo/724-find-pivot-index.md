# 寻找数组的中心索引

## js实现

```
/**
 * @param {number[]} nums
 * @return {number}
 */
var pivotIndex = function (nums) {
  let sumL = 0
  let sumR = 0
  for (let i = 0; i < nums.length; i++) {
    sumR += nums[i]
  }
  for (i = 0; i < nums.length; i++) {
    if (i > 0) sumL += nums[i - 1]
    sumR -= nums[i]
    if (sumL === sumR) return i
  }

  return -1
};
```
