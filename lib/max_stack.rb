class MaxStack
  def initialize
    @m = []
    @st = []
  end

  def push(el) 
    @m.push(@m[-1] ? [@m[-1], el].max : el)
    @st.push(el)
  end

  def pop
    @m.pop
    @st.pop
  end

  def top
    @st[-1]
  end

  def peek_max
    @m[-1]
  end

  def pop_max
    target = peek_max
    t = []
    until (z = pop()) == target
      t.push(z)
    end

    until t.empty?
      push(t.pop)
    end
    z
  end
end



# stack = MaxStack.new()
# stack.push(5);
# stack.push(1);
# stack.push(5);
# stack.top();
# stack.popMax();
# stack.top();
# stack.peekMax();
# stack.pop();
# stack.top();


st = MaxStack.new
st.push 67
st.top
st.push -82
st.push -85
st.top
st.push 55
st.push -47
st.push -24
st.push 13
st.push -82
st.peekMax
st.top
st.popMax
st.top
st.top
st.peekMax
st.peekMax
st.push 77

