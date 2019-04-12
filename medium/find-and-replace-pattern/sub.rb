def mapped(word, pattern)
  return false unless word.length == pattern.length
  m = {}
  sb = ''
  word.chars.each_with_index do |ch, i|
    l = m[ch]
    if l
      sb += l
    else
      m[ch] = pattern[i]
      sb += m[ch]
    end
  end
  sb
end

def valid?(lhs, rhs)
  return false unless lhs.chars.uniq.count == rhs.chars.uniq.count
  (mapped(lhs, rhs) == rhs) and (mapped(rhs, lhs) == lhs)
end

# @param {String[]} words
# @param {String} pattern
# @return {String[]}
def find_and_replace_pattern(words, pattern)
  words.select { |word| valid?(word, pattern) }
end

#find_and_replace_pattern(["abc","deq","mee","aqq","dkd","ccc"], "abb")
#valid?("abb", "cdd")  # => true

#mapped('mee', 'abb')  # => "abb"
#mapped('abb', 'mee')  # => "mee"
