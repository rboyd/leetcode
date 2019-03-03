# @param {Integer[]} nums
# @return {Integer}
def maximum_product(nums)
  nums.sort!
  [nums[0] * nums[1] * nums[-1],
  nums[-1] * nums[-2] * nums[-3]].max
end

#maximum_product([1,2,3])          # => 6
#maximum_product([1,2,3]) == 6     # => true
#maximum_product([1,2,3,4]) == 24  # => true


def gen_a(l)
  a = []
  l.times do
    a << Random.rand(-1000..1000).to_i
  end
  a
end

gen_a(100)

#maximum_product(gen_a(10000))    # => 124251499
#500*500*500                      # => 125000000
#maximum_product([80, 299, 456])  # => 10907520


maximum_product([271, 431, 29, 21, 228, 223, 29, 132, 209, 79, 154, 404, 331, 46, 13, 410, 14, 14, 13, 222])
