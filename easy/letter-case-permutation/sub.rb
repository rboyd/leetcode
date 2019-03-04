def aux(ret, s, i)
  s = s.dup
  if i == s.length
    ret << s
    return
  end
  
  if ('a'..'z').include? s[i] or ('A'..'Z').include? s[i]
    s[i] = s[i].downcase
    aux(ret, s, i+1)
    s[i] = s[i].upcase
    aux(ret, s, i+1)
  else
    aux(ret, s, i+1)
  end
end

# @param {String} s
# @return {String[]}
def letter_case_permutation(s)
  ret = []
  aux(ret, s, 0)
  ret
end

letter_case_permutation('12345')
