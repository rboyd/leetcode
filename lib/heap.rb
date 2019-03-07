
class MaxHeap
  attr_accessor :a, :size
  def initialize(a = [])
    @size = 0
    @a = []
    a.each { |el| add(el) }
  end

  def add(el)
    @size += 1
    @a[size-1] = el
    heapifyUp!(size-1)
  end

  def peekMax
    return nil if @size == 0
    @a[0]
  end

  def popMax
    return nil if @size == 0
    ret = @a[0]
    @a[0] = @a[size-1]
    @a.delete_at(size-1)
    @size -= 1
    heapifyDown!(0)
    ret
  end

  def heapifyDown!(i)
    if size > leftChild(i)+1 and @a[leftChild(i)] > @a[i]
      swap(leftChild(i), i)
      heapifyDown!(leftChild(i))
    elsif size > rightChild(i)+1 and @a[rightChild(i)] > @a[i]
      swap(rightChild(i), i)
      heapifyDown!(rightChild(i))
    end
  end

  def parent(i)
    (i - 1) / 2
  end

  def leftChild(i)
    i * 2 + 1
  end

  def rightChild(i)
    i * 2 + 2
  end

  def swap(i, j)
    t = @a[i]
    @a[i] = @a[j]
    @a[j] = t
  end

  def heapifyUp!(i)
    return if i == 0
    if @a[i] > @a[parent(i)]
      swap(i, parent(i))
      heapifyUp!(parent(i))
    end
  end
end


h = MaxHeap.new
h.a
h.add(5)
h.a
h.add(2)
h.a
h.add(7)
h.a
h.add(1)
h.a
h.add(17)
h.a
h.peekMax
h.popMax
h.a
h.size
