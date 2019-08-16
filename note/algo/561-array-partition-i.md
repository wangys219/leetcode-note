# 数组拆分 I

## js实现

```
/**
 * @param {number[]} nums
 * @return {number}
 */
var arrayPairSum = function (nums) {
  let l
  let r = nums.length - 1
  let sum = 0

  while (r > 0) {
    l = 0
    while (l < r) {
      if (nums[l] > nums[r]) {
        const tmp = nums[l]
        nums[l] = nums[r]
        nums[r] = tmp
      }
      l++
    }
    r--
  }
  l = 0
  r = nums.length - 1
  while (l < r) {
    if (l % 2 === 0) sum += nums[l]
    if (r % 2 === 0) sum += nums[r]
    l++
    r--
  }

  return sum
};
```

```
/**
 * @param {number[]} nums
 * @return {number}
 */
var arrayPairSum = function(nums) {
    var sum = 0, i, length = nums.length;

    nums.sort(function(a, b) { return a - b; });
    for(i = 0; i < length; i++) {
        if (i % 2 === 0) sum += nums[i];
    }

    return sum;
};
```

```
/**
 * 
 * 本来因为耗时问题，想减少循环的次数，结果这个耗时更多233
 * 
 * @param {number[]} nums
 * @return {number}
 */
var arrayPairSum = function(nums) {
    var sum = 0, i, length = nums.length;

    nums.sort(function(a, b) { return a - b; });
    for(i = 0; i < length; i = i + 2) {
        sum += nums[i];
    }

    return sum;
};
```
