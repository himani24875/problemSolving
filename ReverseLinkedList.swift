// https://leetcode.com/problems/reverse-linked-list/

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil { 
            // print("base condn reached and head is ", head?.val)
            return head
        }

        let head2 = reverseList(head?.next)
        // print("head ", head?.val)
        // print("head2 ", head2?.val)
        head?.next?.next = head
        head?.next = nil
        return head2
    }

    // func reverseList(_ head: ListNode?) -> ListNode? {
    //     if head == nil { return nil }

    //     var prev: ListNode? = nil
    //     var curr = head

    //     while curr != nil {
    //         var forward = curr?.next
    //         curr?.next = prev
    //         prev = curr
    //         curr = forward
    //     }
    //     return prev
    // }
}

let sol = Solution()

var head: ListNode? = ListNode(1)
var curr = head
for i in 2...5 {
    let node = ListNode(i)
    curr?.next = node
    curr = curr?.next
}
// print(head?.val)
var newHead = sol.reverseList(head)

while(newHead != nil) {
    print(newHead?.val)
    newHead = newHead?.next
}