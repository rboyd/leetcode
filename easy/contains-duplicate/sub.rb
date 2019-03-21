require 'set'

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    Set.new(nums).count != nums.count
end
