# @param {String} s
# @return {String[]}
def generate_possible_next_moves(s)
  i = 0
  ret = []
  while i < s.length-1
    if s[i,2] == '++'
      if i == 0
        ret << '--' + s[2..-1]
      elsif i == 1
        ret << s[0] + '--' + s[3..-1]
      else
        ret << s[0..i-1] + '--' + s[i+2..-1]
      end
    end

    i += 1
  end
  ret
end



generate_possible_next_moves('++++') == [
  "--++",
  "+--+",
  "++--"
]
