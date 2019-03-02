class MinStack
  def initialize()
    @min = nil
    @st = []
  end

  def push(x)
    @st.push([x,@min])
    @min = @min.nil? ? x : [x,@min].min
    return
  end

  def pop()
    x, prev_min = @st.pop
    @min = prev_min
    x
  end

  def top()
    @st.last.first
  end

  def get_min()
    @min
  end
end

# Your MinStack object will be instantiated and called as such:
obj = MinStack.new()
obj.push(3)
obj.push(-2)
obj.push(7)
obj.pop()
param_3 = obj.top()
param_4 = obj.get_min()
obj.pop
obj.get_min
obj.pop
obj.get_min


