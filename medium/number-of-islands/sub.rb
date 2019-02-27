def paint(grid, i, j, color)
  grid[i][j] = color
  return 1 +
         ((!grid[i+1].nil? and grid[i+1][j] == '0') ? paint(grid, i+1, j, color) : 0) +
         ((!grid[i].nil? and grid[i][j+1]  == '0') ? paint(grid, i, j+1, color) : 0) +
         ((!grid[i+1].nil? and !grid[i+1][j+1].nil? and grid[i+1][j+1] == '0') ? paint(grid, i+1, j+1, color) : 0) +
         (((i > 0) and (j > 0) and !grid[i-1].nil? and !grid[i-1][j-1] == '0') ? paint(grid, i-1, j-1, color) : 0) +
         ((!grid[i+1].nil? and (j > 0) and grid[i+1][j-1] == '0') ? paint(grid, i+1, j-1, color) : 0) +
         (((i > 0) and !grid[i-1].nil? and !grid[i-1][j+1] == '0') ? paint(grid, i-1, j+1, color) : 0) +
         (((i > 0) and !grid[i-1].nil? and grid[i-1][j] == '0') ? paint(grid, i-1, j, color) : 0) +
         (((j > 0) and !grid[i].nil? and grid[i][j-1] == '0') ? paint(grid, i, j-1, color) : 0)
end

def body_sizes(grid)
  color = -1
  sizes = []

  (0..grid.size-1).each do |i|
    (0..grid[0].size-1).each do |j|
      if grid[i][j] == '0'
        sizes << paint(grid, i, j, color)
        color -= 1
      end

    end
  end
  grid
  sizes
end

grid = []
numlines = gets.to_i
numlines.times do
  line = gets
  grid << line.split(' ')
end

# lines = input.split("\n")
# num = lines.shift
# grid = []
# lines.each do |line|
#   grid << line.split(' ')
# end

grid


puts body_sizes(grid).sort

