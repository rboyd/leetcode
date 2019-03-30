# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
    p1, p2 = head, head
    until p2.next.nil? or p2.next.next.nil?
        p1 = p1.next
        p2 = p2.next.next
    end
    p2.next.nil? ? p1 : p1.next
end
