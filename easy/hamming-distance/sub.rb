# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
    x ^= y
    bits = 0
    while !x.zero?
        bits += 1
        x &= (x-1)
    end
    bits
end
