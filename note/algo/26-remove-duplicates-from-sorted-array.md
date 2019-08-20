# 删除排序数组中的重复项

## 解法一

### js实现

```
/**
 * @param {number[]} nums
 * @return {number}
 */
var removeDuplicates = function (nums) {
  for (let i = 0; i < nums.length; i++) {
    let j = i + 1
    while (j < nums.length) {
      if (nums[j] === nums[i]) {
        nums.splice(j, 1)
        continue
      }
      j++
    }
  }

  return nums.length
};
```
