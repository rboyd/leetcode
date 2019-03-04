# @param {Integer} n
# @return {Boolean}
def has_alternating_bits(n)
  bits = n.to_s(2).chars
  0.upto(bits.length-2) do |i|
    return false if bits[i] == bits[i+1]
  end
  return true
end


has_alternating_bits(4)
