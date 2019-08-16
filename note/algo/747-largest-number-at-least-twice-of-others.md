# 至少是其他数字两倍的最大数

## js实现

```
/**
 * @param {number[]} nums
 * @return {number}
 */
var dominantIndex = function (nums) {
  let f = 0
  let s = 0
  for (let i = 0; i < nums.length; i++) {
    if (i === 0) {
      f = nums[i]
      continue
    }
    if (f < nums[i]) {
      s = f
      f = nums[i]
    }
    if (f > nums[i] && s < nums[i]) s = nums[i]
  }
  if (f >= s * 2) return nums.indexOf(f)

  return -1
};
```

```
/**
 * @param {number[]} nums
 * @return {number}
 */
var dominantIndex = function(nums) {
    var m1 = 0, m2 = 0, i, length = nums.length;

    for(i = 0; i < length; i++) {
        if (m1 < nums[i]) {
            m2 = m1;
            m1 = nums[i];
        } else if (m2 < nums[i]) {
            m2 = nums[i];
        }
    }
    if (m1 >= 2 * m2) return nums.indexOf(m1);

    return -1;    
};
```
