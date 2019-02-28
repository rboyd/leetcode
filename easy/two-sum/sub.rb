# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}


def two_sum(nums, target)
  h = {}
  nums.each_with_index do |n, i|
    if h.has_key?(n)
      h[n] << i
    else
      h[n] = [i]
    end
  end

  nums.each_with_index do |n, i|
    indices = h[target-n]
    next if indices.nil?
    lookup = indices.reject { |el| el == i }.first

    return [i, lookup] unless lookup.nil?
  end
end

two_sum([3,2,4] , 6)
two_sum([3,3], 6)
two_sum([2,5,5,11], 10)
