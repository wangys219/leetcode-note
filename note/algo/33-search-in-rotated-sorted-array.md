# 搜索旋转排序数组

## 二分法

要求的时间复杂度是`O(log n)`，所以使用二分法，第一步先用二分法找出旋转点，第二步查找目标

### js实现

```
/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number}
 */
var search = function (nums, target) {
  let n = 0
  let left = 0
  let right = nums.length - 1
  while (left < right) {
    const mid = Math.floor((left + right) / 2)
    if (nums[mid] > nums[mid + 1]) {
      n = mid + 1
      break
    } else {
      if (nums[mid] > nums[left]) left = mid + 1
      else right = mid
    }
  }

  left = 0
  right = nums.length - 1
  while (left <= right) {
    const mid = Math.floor((left + right) / 2)
    const index = (mid + n) % nums.length
    if (nums[index] === target) return index
    if (nums[index] < target) left = mid + 1
    if (nums[index] > target) right = mid - 1
  }
  return -1
};
```
