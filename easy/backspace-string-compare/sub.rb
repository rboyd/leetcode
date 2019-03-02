def sim(s)
  ret = []
  s.chars.each do |ch|
    case ch
    when '#'
      ret.pop
    else
      ret.push(ch)
    end
  end
  ret.join('')
end

# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  sim(s) == sim(t)
end

#backspace_compare(S = "ab#c", T = "ad#c")  # => true
