# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  start = -Float::INFINITY
  (0..nums.size-1).each do |i|
    swapped = false
    (i..nums.size-1).each do |j|
      if nums[j] > start then
        start = nums[i] = nums[j]
        swapped = true
        break
      end
    end
    return i unless swapped
  end
  return nums.size
end


remove_duplicates([0,0,1,1,1,2,2,3,3,4])
remove_duplicates([1,1,2])
