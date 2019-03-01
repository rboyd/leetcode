# @param {String} s
# @param {Integer} k
# @return {String}
def license_key_formatting(s, k)
  s.gsub(/-/, '').reverse.upcase.chars.each_slice(k).map { |a| a.join('') }.join('-').reverse
end


# license_key_formatting('2-5g-3-J', 2) == '2-5G-3J'
# license_key_formatting('5F3Z-2e-9-w', 4)
