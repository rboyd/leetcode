# @param {String} s
# @return {Boolean}
def is_valid(s)
  st = []
  s.split('').each do |c|
    case c
    when '('
      st << ')'
    when '['
      st << ']'
    when '{'
      st << '}'
    else
      if c == st[-1]
        st.pop
      else
        return false
      end
    end
  end
  st.empty?
end

is_valid("[")
# is_valid("(]")
# is_valid("()[]{}")
# is_valid("{[]}")
