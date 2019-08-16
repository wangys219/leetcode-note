# 两数之和

## js实现

```
/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function (nums, target) {
  let hashmap = new Map()
  for (let i = 0; i < nums.length; i++) {
    const t = target - nums[i]
    if (hashmap.has(t)) return [hashmap.get(t), i]
    hashmap.set(nums[i], i)
  }
};
```
