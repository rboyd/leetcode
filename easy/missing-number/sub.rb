# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  (nums.length * (nums.length+1))/2 - nums.sum
end


missing_number([3,0,1])
missing_number([9,6,4,2,3,5,7,0,1])
missing_number([1,2,3])
#4*3/2
#0,1,2,3
