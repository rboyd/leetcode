# @param {Integer[]} nums
# @return {Integer}
# def max_sub_array(nums)
#   return 0 if nums.nil? or nums.empty?
#   l = r = tr = 0
#   max = nums[0]
#   while tr < nums.length do
#     sum = nums[l..tr].inject(:+)

#     if sum > max
#       max = sum
#       r = tr
#       tl = l
#       while tl < r do
#         tl += 1
#         trial_sum = nums[tl..r].inject(:+)
#         if trial_sum > max
#           max = trial_sum
#           l = tl
#         end
#       end
#     elsif nums[tr] > max
#       max = nums[tr]
#       l = r = tr
#       tr +=1
#       next
#     end
#     tr += 1

#   end
#   max
# end

def max_sub_array(nums)
  return 0 if nums.nil? or nums.empty?
  max_so_far = max_ending_here = nums[0]
  nums[1..-1].each do |x|
    max_ending_here = [x, max_ending_here + x].max
    max_so_far = [max_so_far, max_ending_here].max
  end
  max_so_far
end




max_sub_array([-2,1,-3,4,-1,2,1,-5,4]) == 6
max_sub_array([-1,2,3,-4,5,10]) == 16
max_sub_array([])
max_sub_array(nil)
max_sub_array([-2, -3, -4, -1, -2, 1, 5, -3])
max_sub_array([-2, -3, 4, -1, -2, 1, 5, -3])
max_sub_array([-10,2,3,-2,0,5,-15])
max_sub_array([2,3,-2,-1,10])
max_sub_array([3,-2,-3,-3,1,3,0]) == 4


'hi'[1..1]
