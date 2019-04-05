

# @param {Integer[]} a
# @return {Boolean}
def can_three_parts_equal_sum(a)
  total = a.reduce(:+)
  return false unless total % 3 == 0

  s1 = total / 3
  s2 = 2 * s1

  sum = 0
  count = 0

  a.each do |el|
    sum += el
    if sum == s1
      count += 1
      sum = 0
    end
  end

  sum == 0 and count == 3
end

#can_three_parts_equal_sum([3,3,6,5,-2,2,5,1,-9,4])
# can_three_parts_equal_sum([0,2,1,-6,6,-7,9,1,2,0,1])
# can_three_parts_equal_sum([0,2,1,-6,6,7,9,-1,2,0,1])
# can_three_parts_equal_sum([1,2,2,1,2,1])
# can_three_parts_equal_sum([1,3,1])
#can_three_parts_equal_sum(Array.new(1000) { 10000 - Random.rand(20000) })
