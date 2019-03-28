# @param {Integer} n
# @return {Integer}
def binary_gap(n)
  run = -1
  max_dist = -Float::INFINITY

  n.to_s(2).chars.each do |ch|
    run += 1 if max_dist > -Float::INFINITY
    if ch == '1'
      run = 0 if run < 0
      max_dist = [max_dist, run].max
      run = 0 if run > 0
    end
  end

  [max_dist, 0].max
end

binary_gap(22)

binary_gap(5)
binary_gap(6)
binary_gap(8)

1.upto(100) { |n| puts binary_gap(n) }
