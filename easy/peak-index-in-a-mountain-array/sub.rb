# @param {Integer[]} a
# @return {Integer}
def peak_index_in_mountain_array(a)
  a.each_with_index { |el, i|
    next if i == 0
    break i-1 if a[i] < a[i-1] }
end

peak_index_in_mountain_array([0,10,5,2])
