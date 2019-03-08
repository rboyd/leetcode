

# def navigate(nums, distance, mid, heading_right)
#   @p += 1
#   return -1 if @p == 10
#   mid
#   nums[mid]
#   return mid if mid == 0 and nums[mid] > nums[mid+1]
#   return mid if mid == nums.size-1 and nums[mid] > nums[mid-1]
#   return mid if nums[mid-1] < nums[mid] and nums[mid] > nums[mid+1]

#   distance = [1, (distance/2)].max

#   if nums[mid+1] >= nums[mid-1]
#     if heading_right
#       navigate(nums, distance, mid+distance, heading_right)
#     else
#       navigate(nums, distance, mid-distance, !heading_right)
#     end
#   else # head left
#     if heading_right
#       navigate(nums, distance, mid-distance, !heading_right)
#     else
#       navigate(nums, distance, mid+distance, heading_right)
#     end
#   end
# end

def navigate(nums, distance, mid)
  @p += 1
  return mid if @p == 100
  return mid if mid == 0 and nums[mid] > nums[mid+1]
  return mid if mid == nums.size-1 and nums[mid] > nums[mid-1]
  return mid if nums[mid-1] < nums[mid] and nums[mid] > nums[mid+1]

  distance = [1, (distance/2)].max


  mid
  nums[mid]
  nums[mid-1]
  navigate(nums, distance, mid + ((nums[mid+1] >= nums[mid-1]) ? distance : -distance))
end

# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
  return 0 if nums.size == 1
  return 0 if nums.size == 2 and nums[0] > nums[1]
  return 1 if nums.size == 2 and nums[1] > nums[0]
  mid = nums.size/2
  @p = 0
  navigate(nums, mid, mid)

  # start in the middle
  # inspect either side, if both are lower, we're done
  # otherwise travel midway up the side with the higher neighbor
  # if we ever reach the edge of either [0, n] we're done
  # if we ever find lower, we toggle and head back the direction we just came
end


find_peak_element([2,1])

#find_peak_element([0, 6, 7, 7, 3, 6, 6, 6, 9, 0, 2, 8, 1, 1, 9, 6, 2, 3, 3, 3])

# find_peak_element([1,2,3,1])
# find_peak_element([1,2,1,3,5,6,4])

#find_peak_element([9, 5, 6, 7, 3, 7, 6, 0, 2, 0, 9, 9, 8, 4, 2, 3, 9, 6, 7, 2])

#find_peak_element([7, 1, 4, 9, 1, 5, 7, 9, 7, 7, 7, 3, 2, 8, 7, 5, 0, 6, 0, 3])

# 30.times do
#   a = Array.new(20) { Random.rand(10) }


#   @p = 0
#   i = find_peak_element(a)
#   next if i == 0 or i == 19
#   puts a.inspect if not a[i-1] < a[i] and a[i] > a[i+1]
# end

#find_peak_element([1, 6, 6, 1, 5, 1, 4, 7, 2, 8, 5, 4, 1, 7, 1, 7, 2, 0, 6, 3])
#find_peak_element([8, 0, 8, 9, 9, 9, 9, 5, 5, 5, 2, 1, 5, 1, 1, 6, 4, 9, 1, 3])
