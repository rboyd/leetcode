# review https://leetcode.com/problems/fruit-into-baskets/solution/

require 'set'

# @param {Integer[]} tree
# @return {Integer}
def total_fruit(tree)
  max = 0

  i = 0
  while i <= tree.size-1 do
    break if max > tree.size-i
    seen = Set.new
    count = 0

    while tree[i+1] == tree[i] do
      count += 1
      i += 1
      max = count if count >= max
    end

    j = i
    while j <= tree.size-1 do
      while (j < tree.size and seen.member?(tree[j])) do
        count += 1
        j += 1
      end

      if seen.size < 2 and j < tree.size then
        seen.add(tree[j])
        count += 1
        j += 1
      end
      max = count if count >= max

      break if (2 == seen.size) and !seen.member?(tree[j])
    end
    i += 1
  end

  return max
end

total_fruit [1,1]
total_fruit [1,2,1]
total_fruit [0,1,2,2]
total_fruit [1,2,3,2,2]

total_fruit [3,3,3,1,2,1,1,2,3,3,4]

total_fruit Array.new(1024, 1).zip(Array.new(1024, 0)).flatten
total_fruit Array.new(1024, [0, 1]).flatten
