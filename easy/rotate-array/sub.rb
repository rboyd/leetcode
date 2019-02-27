# https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/646/

def rotate(nums, k)
  k.times do
    tmp = nums[nums.size-1]
    (nums.size-1).downto(1).each do |i|
      nums[i] = nums[i-1]
    end
    nums[0] = tmp
  end
end


nums = [1,2,3,4,5,6]
rotate(nums, 2)
print nums

