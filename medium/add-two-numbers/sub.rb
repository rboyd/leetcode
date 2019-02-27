# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  p1 = l1
  p2 = l2

  res = ListNode.new(0)
  p3 = res
  c = 0

  while p1 or p2 or c.positive? do
    sum = ((p1 ? p1.val : 0) + (p2 ? p2.val : 0) + c)
    c = sum / 10
    p3.val = sum % 10
    p1 = p1.next if p1
    p2 = p2.next if p2
    if p1 or p2 or c.positive?
      p3.next = ListNode.new(0)
      p3 = p3.next
    end
  end
  res
end

num1 = ListNode.new(2)
num1.next = ListNode.new(4)
num1.next.next = ListNode.new(3)

num2 = ListNode.new(5)
num2.next = ListNode.new(6)
num2.next.next = ListNode.new(4)

add_two_numbers(num1, num2)

add_two_numbers(ListNode.new(5), ListNode.new(5))
