def aux(max, num_a, in_buffer, remaining_keystrokes)
#  puts "max: #{max}, num_a: #{num_a}, in_buffer: #{in_buffer}, remaining_keystrokes: #{remaining_keystrokes}"
  #  puts "done" if remaining_keystrokes <= 0
#  return max if in_buffer == 0 and num_a > 3
  return max > num_a ? max : num_a if remaining_keystrokes == 0


#   if remaining_keystrokes == 7
#     if in_buffer > 0
#       return [max,
#               # Ctl+V * 6
#               num_a + (7*in_buffer),

#               # Ctl+A, Ctl+C, Ctl+V, Ctl+V, Ctl+V, Ctl+V, Ctl+V
#               num_a*5,

#               # Ctl+V, Ctl+A, Ctl+C, Ctl+V, Ctl+V, Ctl+V, Ctl+V
#               # YYY
#               (num_a * 5) + (in_buffer * 5),
# #              num_a + in_buffer + (num_a + in_buffer) + (num_a + in_buffer) + (num_a + in_buffer) + (num_a + in_buffer),

#               # Ctl+V, Ctl+V, Ctl+V, Ctl+V, Ctl+A, Ctl+C, Ctl+V
#               # XXX
#               (num_a * 2) + (8 * in_buffer),
# #              num_a + (4*in_buffer) + num_a + (4*in_buffer),

#               # CAV CAV, Ctl+V
#               num_a*6
#              ].max
#     end
#   end

  a = if in_buffer > 0
#        puts "pasting"
    aux(max, num_a+in_buffer, in_buffer, remaining_keystrokes-1)
  else
    aux(max, num_a+1, in_buffer, remaining_keystrokes-1)
  end

  #  puts "select/copy/paste"
  if remaining_keystrokes > 2
    aux([a, max].max, num_a*2, num_a, remaining_keystrokes-3)
  else
    [a,max].max
  end
end

# @param {Integer} n
# @return {Integer}
def max_a(remaining_keystrokes)
  num_a = 1
  aux(remaining_keystrokes, num_a, 0, remaining_keystrokes-1)
end




# - every sequence will start with A+
#                                  - Ctl+V will only be preceeded by Ctl+A Ctl+C (have buffer)


max_a(3) == 3
max_a(7) == 9
