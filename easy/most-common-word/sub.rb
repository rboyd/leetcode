require 'set'

# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
    b = Set.new(banned)
    words = paragraph.gsub(/[!?',;.]/, ' ').split(/\s+/)
    words.map! { |w| w.downcase }
    words.reject! { |w| b.member?(w) }
    words
    words.group_by(&:itself).sort_by { |k, v| v.length }.last.first
end

most_common_word("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"])


most_common_word("Bob", [])

most_common_word("a, a, a, a, b,b,b,c, c", ["a"])
