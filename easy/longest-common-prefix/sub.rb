# require 'set'
# # @param {String[]} strs
#  # @return {String}
# def longest_common_prefix(strs)
# #  strs.reject! { |str| str.empty? }                                     
#   return strs.first if strs.length == 1
# #  return "" if Set.new(strs.map { |str| str[0] }).length == strs.length


#   score = {}

#   strs.each do |str|
#     if str.empty?
#       score[''] = score.has_key?('') ? score[''] + 1 : 1

#     else
#       (0..str.length-1).each do |i|
#         prefix = str[0..i]
#         if score.has_key?(prefix)
#           score[prefix] += 1
#         else
#           score[prefix] = 1
#         end
#       end
#     end
#   end

#   score.sort do |lhs, rhs|
#     if lhs[1] < rhs[1]
#       1
#     elsif lhs[1] > rhs[1]
#       -1
#     else
#       rhs[0].length <=> lhs[0].length
#     end
#   end.first[0]
# end

#longest_common_prefix ['', 'a']


def longest_common_prefix(strs)
  return "" if strs.empty?
  prefix = Float::INFINITY
  strs.reduce(strs.first) do |str1, str2|
    idx = [str1.size, str2.size].min.times { |i| break i if str1[i] != str2[i] }
    prefix = [prefix, idx].min
    str1[0...prefix]
  end
end

longest_common_prefix(["flower"])
