# 从链表中删去总和值为零的连续节点

## 解法一：暴力

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
var removeZeroSumSublists = function (head) {
  let slow = head
  let tmp = null

  while (slow) {
    let sum = 0
    let fast = slow

    while (fast) {
      sum += fast.val
      fast = fast.next
      if (sum === 0) break
    }

    if (sum === 0) {
      if (head === slow) head = fast
      else tmp.next = fast
      slow = head
      continue
    }

    tmp = slow
    slow = slow.next
  }

  return head
};
```
