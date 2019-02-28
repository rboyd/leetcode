MEMOIZE = {}

def p(s)
  return true if s.nil?

  return true if MEMOIZE.has_key?(s)

  if s.length == 1
    MEMOIZE[s] = true
    return true
  end

  if s.length == 2 and s[0] == s[1]
    MEMOIZE[s] = true
    return true
  end

  if s[0] == s[-1] and MEMOIZE.has_key?(s[1..-2])
    MEMOIZE[s] = true
    return true
  end

  false
end

def longest_palindrome(s)
  ret = ''
  1.upto(s.length) do |i|
    0.upto(s.length-i) do |j|
      if p(s[j,i])
        ret = s[j, i] if i > ret.length
      end
    end
  end

  ret
end

#p(%w{aaa})  # => true


longest_palindrome("babad")


