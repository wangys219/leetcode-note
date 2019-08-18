# 二叉树的最小深度

## 解法一：BFS

### js实现

```
/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {number}
 */
var minDepth = function (root) {
  let result = 0
  const queue = []
  if (!root) return result
  queue.push(root)
  while (queue.length) {
    result++
    const len = queue.length
    for (let i = 0; i < len; i++) {
      const cur = queue.shift()
      if (!cur.left && !cur.right) return result
      if (cur.left) queue.push(cur.left)
      if (cur.right) queue.push(cur.right)
    }
  }
};
```
