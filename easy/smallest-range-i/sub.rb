# @param {Integer[]} a
# @param {Integer} k
# @return {Integer}
def smallest_range_i(a, k)
  i, j = Float::INFINITY, -Float::INFINITY
  a.each do |el|
    i = [i, el].min
    j = [j, el].max
  end

  range = (j - k) - (i + k)
  return 0 if range < 0
  range
end

smallest_range_i([0,10], 2)
smallest_range_i([1], 0)
smallest_range_i([1,3,6], 3)


10.times do
  el = Random.rand(50)
  a = Array.new(el) { Random.rand(10000) }
  k = Random.rand(50)
  puts a.inspect, k
  puts smallest_range_i(a, k)
end
