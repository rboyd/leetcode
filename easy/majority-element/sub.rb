# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  nums.group_by(&:itself).sort_by { |k, v| v.length }.reverse.first.first  # => 2
end                                                                        # => :majority_element

majority_element([2])  # => 2



