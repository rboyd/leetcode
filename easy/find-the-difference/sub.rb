# @param {String} s
# @param {String} t
# @return {Character}
def find_the_difference(s, t)
  m = {}
  s.chars.each do |ch|
    if m.has_key?(ch)
      m[ch] += 1
    else
      m[ch] = 1
    end
  end

  t.chars.each do |ch|
    return ch if !m.has_key?(ch)
    m[ch] -= 1
    m.delete(ch) if m[ch] == 0
  end

  m.keys.first
end

find_the_difference("abcd", "abecd")
