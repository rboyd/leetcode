def isChar(c)
  ('a'..'z').include?(c) or ('A'..'Z').include?(c)
end

# @param {String} s
# @return {String}
def reverse_only_letters(s)
  i = 0
  j = s.length-1
  while i < j
    if !isChar(s[i])
      i += 1
      next
    end

    if !isChar(s[j])
      j -= 1
      next
    end

    t = s[j]
    s[j] = s[i]
    s[i] = t
    i += 1
    j -= 1
  end
  s
end

reverse_only_letters("ab-cd") == "dc-ba"
