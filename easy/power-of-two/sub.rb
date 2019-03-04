# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  # calculate Hamming weight
  n &= n-1
  n.zero?
end
