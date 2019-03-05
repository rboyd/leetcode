

# @param {Integer[]} height
# @return {Integer}
def trap(height)
  total = 0                      # => 0
  return total if height.empty?  # => false

  leftMax = Array.new(height.length+1)  # => [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]
  leftMax[0] = 0                        # => 0
  height.each_with_index do |h, i|      # => [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]
    leftMax[i+1] = [leftMax[i], h].max  # => 0, 1, 1, 2, 2, 2, 2, 3, 3, 3, ...
  end                                   # => [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]

  rightMax = 0                                                                                    # => 0
  ((height.length-1).downto(0)).each do |i|                                                       # => #<Enumerator: 11:downto(0)>
    rightMax = [height[i], rightMax].max                                                          # => 1, 2, 2, 2, 3, 3, 3, 3, 3, 3, ...
    total += [leftMax[i], rightMax].min > height[i] ? [leftMax[i], rightMax].min - height[i] : 0  # => 0, 0, 1, 1, 1, 2, 4, 5, 5, 6, ...
  end                                                                                             # => 11

  total  # => 6
end      # => :trap

5                                # => 5
trap([0,1,0,2,1,0,1,3,2,1,2,1])  # => 6

(1..30).map { Random.rand(50) }  # => [28, 49, 1, 37, 35, 25, 18, 34, 36, 43, 24, 5, 37, 39, 21, 15, 21, 21, 6, 4, 23, 22, 13, 13, 49, 23, 46, 10, 49, 32]
