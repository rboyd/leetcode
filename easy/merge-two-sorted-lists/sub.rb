# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  head, tail = nil

  until l1.nil? and l2.nil? do
    if l1.nil?
      min_node = l2
      l2 = l2.next
    elsif l2.nil?
      min_node = l1
      l1 = l1.next
    else
      if l1.val <= l2.val
        min_node = l1
        l1 = l1.next
      else
        min_node = l2
        l2 = l2.next
      end
    end

    ln = ListNode.new(min_node.val)
    head = ln if head.nil?
    tail.next = ln unless tail.nil?
    tail = ln
  end

  head
end

