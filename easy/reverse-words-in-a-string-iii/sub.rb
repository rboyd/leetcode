# @param {String} s
# @return {String}
def reverse_words(s)
    s.split(/ /).map do |word|
        word.reverse
    end.join(' ')
end
