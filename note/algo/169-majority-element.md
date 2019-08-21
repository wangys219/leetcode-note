# 求众数

## 解法一

### js实现

```
/**
 * @param {number[]} nums
 * @return {number}
 */
var majorityElement = function (nums) {
  let hashmap = new Map()
  for (let i = 0; i < nums.length; i++) {
    if (!hashmap.has(nums[i])) hashmap.set(nums[i], 1)
    else hashmap.set(nums[i], hashmap.get(nums[i]) + 1)
  }

  const std = nums.length / 2
  for (const [key, value] of hashmap) {
    if (value > std) return key
  }
};
```
