
# https://leetcode.com/problems/3sum/submissions/

# believe the speedup involves starting at either end of the walk and
# decrementing or incrementing indices depending on too high/too low. I think
# a binary search is a further speedup

# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums)
  return [] if nums.size < 3
  m = {}
  sol = []
  nums.each { |num| m[num] = m.has_key?(num) ? m[num] + 1 : 1 }
  (0..nums.size-3).each do |i|
    (i+1..nums.size-2).each do |j|
      x = nums[i] + nums[j]
      if m.has_key?(-x)
        z = m[-x]
        num_used = [nums[i], nums[j]].count(-x)
        if num_used > 0
          if z > num_used
            sol << [nums[i], nums[j], -x].sort
          end
        else
          sol << [nums[i], nums[j], -x].sort
        end
      end
    end
  end
  sol.uniq.sort
end

#three_sum([-1,0,1])
#three_sum([-2, 1])
three_sum([-2,0,0,2,2])
#Array.new(500) { Random.rand(100) - 50 }
