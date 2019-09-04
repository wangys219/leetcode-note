# 二叉搜索树的最近公共祖先

## 解法一: 暴力递归

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
 * @param {TreeNode} p
 * @param {TreeNode} q
 * @return {TreeNode}
 */
var lowestCommonAncestor = function (root, p, q) {
  if (!root) return null
  if (!has(root, p) || !has(root, q)) return null
  return lowestCommonAncestor(root.left, p, q) || lowestCommonAncestor(root.right, p, q) || root
};

function has (node, val) {
  if (!node) return false
  if (node === val) return true
  return has(node.left, val) || has(node.right, val)
}
```
