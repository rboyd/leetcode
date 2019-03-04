# @param {Integer[][]} m
# @return {Integer[][]}
def image_smoother(m)
  width = m.length
  height = m[0].length
  ret = Array.new(width) { Array.new(height) }
  0.upto(width-1) do |x|
    0.upto(height-1) do |y|
      valid = 0
      sum = 0
      (-1..1).each do |i|
        (-1..1).each do |j|
          if ((x+i) >= 0 and (x+i) < width) and ((y+j) >= 0 and (y+j) < height)
            valid += 1
            sum += m[x+i][y+j]
          end
        end
      end
      ret[x][y] = (sum / valid)
    end
  end
  ret
end

# image_smoother([[1,1,1],
#  [1,0,1],
#  [1,1,1]]) == [[0, 0, 0],
#  [0, 0, 0],
#  [0, 0, 0]]




image_smoother([[35, 248, 140, 30, 18],
                [42, 246, 55, 75, 1],
                [217, 245, 146, 5, 77],
                [199, 246, 217, 99, 23],
                [235, 219, 178, 231, 162]])

# [[142, 145, 115, 68, 71]
#  [172, 164, 113, 87, 53]
#  [207, 189, 140, 110, 98]
#  [210, 201, 159, 127, 118]
#  [205, 190, 162, 143, 127]]


(35 + 248 + 140 + 42 + 246 + 55)
# (35 + 248 + 140 + 42 + 246 + 55) / 6

width = 25
height = 25
ret = Array.new(height) { Array.new(width) }
0.upto(width-1) do |i|
  0.upto(height-1) do |j|
    ret[i][j] = rand(0..255)
  end
end

 ret
