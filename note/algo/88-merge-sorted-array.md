# 合并两个有序数组

## 解法一

### js实现

```
/**
 * @param {number[]} nums1
 * @param {number} m
 * @param {number[]} nums2
 * @param {number} n
 * @return {void} Do not return anything, modify nums1 in-place instead.
 */
var merge = function (nums1, m, nums2, n) {
  for (let i = 0; i < nums1.length; i++) {
    if (!nums2.length) break
    if (nums1[i] < nums2[0]) continue
    nums1.splice(i, 0, nums2[0])
    nums1.pop()
    nums2.shift()
  }
  for (let i = 0; i < nums2.length; i++) {
    nums1.pop()
  }
  while(nums2.length) {
    nums1.push(nums2.shift())
  }
};
```
