# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
  lookup = s.chars.group_by(&:itself)
  num_jewels = 0
  j.chars.each do |jewel|
    num_jewels += lookup[jewel].count if lookup.has_key?(jewel)
  end
  num_jewels
end

# num_jewels_in_stones("aA", "aAAbbbb") == 3

# num_jewels_in_stones('z', 'ZZ')

# "aAAbbbb".split(//).group_by(&:itself)

# ''.chars
