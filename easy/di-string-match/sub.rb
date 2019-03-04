# def valid?(s, p)
#     (0..s.length-1).each do |i|
#         if s[i] == 'I'
#             return false unless p[i] < p[i+1]
#         elsif s[i] == 'D'
#             return false unless p[i] > p[i+1]
#         end
#     end
#     true
# end

# # @param {String} s
# # @return {Integer[]}
# def di_string_match(s)
#     (0..s.length).to_a.permutation.each do |p|
#         return p if valid?(s, p)
#     end
# end


def di_string_match(s)
  min = 0
  max = 0
  ret = [0]
  s.chars.each do |op|
    case op
    when 'I'
      max = max + 1
      ret << max
    when 'D'
      min = min - 1
      ret << min
    end
  end

  if min < 0
    (0..ret.length-1).each do |i|
      ret[i] += -min
    end
  end
  

  ret
end



di_string_match('DDI')
di_string_match('DIIIDDIDDDDDDDDIDIDI')


di_string_match('III')
di_string_match('IDID')
valid?("IDID", [0, 1, 2, 3, 4])
