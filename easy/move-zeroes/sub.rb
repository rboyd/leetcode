# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  groups = nums.group_by(&:itself)
  return unless groups.has_key?(0)
  num_zeros = groups[0].count

  until nums.index(0) == nums.count - num_zeros do
    nums.index(0).upto(nums.count-2) do |i|
      t = nums[i]
      nums[i] = nums[i+1]
      nums[i+1] = t
    end
  end
end

move_zeroes([0, 1, 2, 0, 3, 4, 0, 7])
move_zeroes([1, 2, 3, 4, 7])

[1, 2, 3, 4, 7, 0, 0, 0].count
[1, 2, 3, 4, 7, 0, 0, 0].index(0)

  [1,2, 0, 4, 0, 0].index(0)

  [1,2,0,0,3].group_by(&:itself)[0].count
