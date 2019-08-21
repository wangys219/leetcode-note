# 删除排序链表中的重复元素

## 解法一

### js实现

```
/**
 * Definition for singly-linked list.
 * function ListNode(val) {
 *     this.val = val;
 *     this.next = null;
 * }
 */
/**
 * @param {ListNode} head
 * @return {ListNode}
 */
var deleteDuplicates = function (head) {
  const visited = new Set()
  let last = null
  let cur = head
  while (cur) {
    if (visited.has(cur.val)) {
      last.next = cur.next
      cur = cur.next
      continue
    }
    visited.add(cur.val)
    last = cur
    cur = cur.next
  }
  return head
};
```
