# 平衡二叉树

## 解法一：递归

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
 * @return {boolean}
 */
var isBalanced = function (root) {
  if (!root) return true
  if (Math.abs(depth(root.left) - depth(root.right)) > 1) return false
  return isBalanced(root.left) && isBalanced(root.right)
};

function depth (root) {
  if (!root) return 0
  return Math.max(depth(root.left), depth(root.right)) + 1
}
```
