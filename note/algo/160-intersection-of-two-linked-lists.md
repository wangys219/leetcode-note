# 相交链表

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
 * @param {ListNode} headA
 * @param {ListNode} headB
 * @return {ListNode}
 */
var getIntersectionNode = function (headA, headB) {
  if (!headA || !headB) return null
  let curA = headA
  let curB = headB
  let lenA = 0
  let lenB = 0

  while (curA) {
    lenA++
    curA = curA.next
  }

  while (curB) {
    lenB++
    curB = curB.next
  }

  curA = headA
  curB = headB
  let moveA = lenA - Math.min(lenA, lenB)
  let moveB = lenB - Math.min(lenA, lenB)

  while (moveA) {
    curA = curA.next
    moveA--
  }

  while (moveB) {
    curB = curB.next
    moveB--
  }

  while (curA) {
    if (curA === curB) return curA
    curA = curA.next
    curB = curB.next
  }

  return null
};
```
