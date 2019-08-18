# 二叉树的层次遍历 II

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
 * @return {number[][]}
 */
var levelOrderBottom = function (root) {
  const result = []
  const queue = []
  if (!root) return result
  queue.push(root)
  while (queue.length) {
    const len = queue.length
    const level = []
    for (let i = 0; i < len; i++) {
      const cur = queue.shift()
      level.push(cur.val)
      if (cur.left) queue.push(cur.left)
      if (cur.right) queue.push(cur.right)
    }
    result.push(level)
  }

  let res = []
  while (result.length) {
    res.unshift(result.shift())
  }

  return res
};
```
