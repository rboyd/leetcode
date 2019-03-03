# use a map to a doubly-linked list

# hashmap key => listnode
# on get, move list items to the end of list


class ListNode
  attr_accessor :prev, :next, :key, :value
  def initialize(key, value)
    @key = key
    @value = value
    @prev = nil
    @next = nil
  end
end

class LRUCache
  attr_accessor :end, :start, :m
  def initialize(capacity)
    @count = 0
    @capacity = capacity
    @m = {}
    @start = nil
    @end = nil
  end

  def moveToEnd(n)
    return if @end == n
    if @start == n
      @start = n.next
    end

    pr = n.prev
    nx = n.next

    n.prev = @end
    @end.next = n if @end
    @end = n

    pr.next = nx if pr
    nx.prev = pr if nx
  end

  def get(key)
    if @m.has_key?(key)
      n = @m[key]
      moveToEnd(n)
      @m[key].value
    else
      -1
    end
  end

  def put(key, value)
    if @m.has_key?(key)
      # change value
      n = @m[key]
      n.value = value
      moveToEnd(n)
    else # new key
      n = ListNode.new(key, value)
      n.prev = @end if @end
      @start = n if @start.nil?
      @end.next = n if @end
      @end = n
      @m[key] = n

      if @count < @capacity
        @count += 1
      else # at capacity, evict head of list
        n = @start
        if @start and @start.next
          @start.next.prev = nil
          @start = @start.next
        end
        @m.delete(n.key)
      end
    end
    nil
  end
end

# # Your LRUCache object will be instantiated and called as such:
# obj = LRUCache.new(2)
# # param_1 = obj.get(key)
# # obj.put(key, value)
# obj.put(1, 1)
# obj.put(2, 2)
# obj
# obj.get(1)
# obj.put(2, 2)
# obj
# obj.get(1)
# obj.put(3, 3)
# obj.get(2)
# obj.put(4, 4)
# obj.m.count
# obj.get(1)
# obj.get(3)
# obj.get(4)


obj = LRUCache.new(3)
obj.put(1, 1)
obj.put(2, 2)
obj.put(3, 3)
obj.put(4, 4)
obj.get(4)
obj.get(3)
obj.get(2)
obj.get(1)
obj.put(5, 5)
obj.get(1)
obj.get(2)
obj.get(3)
obj.get(4)
obj.get(5)

# ["LRUCache","put","put","put","put","get","get","get","get","put","get","get","get","get","get"]
# [[3],[1,1],[2,2],[3,3],[4,4],[4],[3],[2],[1],[5,5],[1],[2],[3],[4],[5]]
