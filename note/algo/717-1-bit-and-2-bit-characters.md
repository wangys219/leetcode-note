# 1比特与2比特字符

## js实现

```
/**
 * @param {number[]} bits
 * @return {boolean}
 */
var isOneBitCharacter = function(bits) {
    var check = 0, i, length = bits.length - 1;

    for(i = 0; i < length; i++) {
        if (!check) {
            if (bits[i] === 1) check = 1;
        } else {
            check = 0;
        }
    }

    return check === 0 ? true : false;
};
```
