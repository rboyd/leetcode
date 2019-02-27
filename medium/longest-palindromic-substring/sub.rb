# @param {String} s
# @return {String}
def longest_palindrome(s)
  return '' if s.empty?
  max_len = 0
  ret = ''
  s.chars.each_with_index do |ch, i|
    for j in (i..s.length-1) do
      next if j-i <= max_len
      if s[i..j].eql?(s[i..j].reverse)
        max_len = j-i
        ret =  s[i..j]
      end
    end
  end
  max_len.zero? ? s[0] : ret
end


longest_palindrome('a')
longest_palindrome('babad')
longest_palindrome('cbbd')
longest_palindrome('')
