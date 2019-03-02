
class ListNode:
  def __init__(self, data):
      self.data = data
      self.next = None
      return

class Solution(object):
    def hasCycle(self, head):
        """
        :type head: ListNode
        :rtype: bool
        """
        seen = {}
        p = head
        while not (p in seen) and p != None:
            seen[p] = True
            p = p.next
        return p != None

# XXX TODO detect cycle by sending a runner with a speed multiple

    
# head = ListNode(5)
# head.next = ListNode(3)
# head.next.next = ListNode(2)

