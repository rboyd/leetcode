# @param {Integer[]} bits
# @return {Boolean}
def is_one_bit_character(bits)
  return false if bits.empty?
  return true if bits.count == 1

  bit = bits.shift
  bits.shift if bit == 1
  is_one_bit_character(bits)
end



is_one_bit_character([1,1,0,0,1,0,0,0,0,1,0,1,0,1,1,1,0])

[1,1,0].shift
