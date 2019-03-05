# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
    words = str.split(/ /)
    chars = pattern.chars
    puts chars.length
    puts words.length

    return false unless chars.length == words.length

    w = {}
    c = {}

    chars.each_with_index do |ch, i|
        c[ch] = words[i]
    end

    words.each_with_index do |wrd, i|
        w[wrd] = chars[i]
    end

    c.each do |k, v|
      return false unless k == w[c[k]]
    end

    w.each do |k, v|
      return false unless k == c[w[k]]
    end

    return true
end
