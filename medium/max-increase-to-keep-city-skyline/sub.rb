# @param {Integer[][]} grid
# @return {Integer}
# def max_increase_keeping_skyline(grid)
#   return [] if grid.empty?
#   maxLR = Array.new(grid.length) { 0 }
#   maxTB = Array.new(grid[0].length) { 0 }

#   (0..grid.length-1).each do |i|
#     (0..grid[0].length-1).each do |j|
#       maxLR[i]
#       maxTB[j]
#       grid[i][j]
#       maxLR[i] = [maxLR[i], grid[i][j]].max
#       maxTB[j] = [maxTB[j], grid[i][j]].max
#     end
#   end

#   ret = Array.new(grid.length) { Array.new(grid.length) }
#   total = 0
#   (0..grid.length-1).each do |i|
#     (0..grid[0].length-1).each do |j|
#       ret[i][j] = [maxLR[i], maxTB[j]].min
#       total += ret[i][j] - grid[i][j]
#     end
#   end

#   total
# end

def max_increase_keeping_skyline(grid)
  maxLR = grid.map { |row| row.max }
  maxTB = grid.transpose.map { |col| col.max }

  total = 0
  grid.each_with_index do |row, i|
    row.each_with_index do |col, j|
       total += [maxLR[i], maxTB[j]].min - col
    end
  end
  total
end





max_increase_keeping_skyline([[3,0,8,4],
                              [2,4,5,7],
                              [9,2,6,3],
                              [0,3,1,0]])


#max_increase_keeping_skyline((0..50).each.map {(0..50).each.map {Random.rand(100)}})
# == [ [8, 4, 8, 7],                                 

                                                                             # [7, 4, 7, 7],
                                                                             # [9, 4, 8, 7],
                                                                             # [3, 3, 3, 3] ]
