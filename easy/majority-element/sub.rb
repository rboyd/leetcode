# consider Boyer Moore voting
# consider 

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  count = 0
  current = nil
  nums.each do |num|
    current = num if count == 0
    if current == num
      count += 1
    else
      count -= 1
    end
  end
  current
end

majority_element([2])



majority_element([1,2,1,2,1,2,1,2,2])

