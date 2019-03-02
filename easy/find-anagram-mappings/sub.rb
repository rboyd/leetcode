# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer[]}
def anagram_mappings(a, b)
  map = {}
  b.each_with_index do |el, i|
    map[el] = i
  end

  a.map { |el| map[el] }
end

anagram_mappings([12, 28, 46, 32, 50], [50, 12, 32, 46, 28]) == [1, 4, 3, 2, 0]
