# 旋转字符串

## js实现

```
/**
 * @param {string} A
 * @param {string} B
 * @return {boolean}
 */
var rotateString = function(A, B) {
    var str = A + A, re;

    if (A.length !== B.length) return false;
    re = new RegExp(B);

    return re.test(str);
};
```
