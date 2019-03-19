

def compute(s, c, ret)
  first_index = s.index(c)
  dist = first_index + 1
  s.chars.each_with_index do |ch, i|
    if ch == c
      dist = 0
      ret[i] = 0
    else
      dist = i < first_index ? dist - 1 : dist + 1;
      ret[i] = dist
    end
  end
end

def shortest_to_char(s, c)
  left = Array.new(s.size)
  right = Array.new(s.size)

  compute(s, c, left)
  compute(s.reverse, c, right)

  right.reverse!

  0.upto(s.size-1).each do |i|
    next if left[i] == 0

    left[i] = [left[i], right[i]].min
  end

  left
end

shortest_to_char('loveleetcode', 'e')

