def perimeter_for(grid, x, y, height, width)
  return 0 unless grid[y][x] == 1
  sum = 0

  (-1..1).each do |i|
    (-1..1).each do |j|
      next if [i.abs, j.abs].sum > 1
      next if i == 0 and j == 0
      sum += 1 if (y + i) < 0
      sum += 1 if (y + i) > (height - 1)
      sum += 1 if (x + j) < 0
      sum += 1 if (x + j) > (width - 1)

      if ((y + i) >= 0) and ((y + i) <= (height - 1)) and ((x + j) >= 0) and ((x + j) <= (width - 1))
        sum += 1 if (grid[y+i][x+j] == 0)
      end
    end
  end
  sum
end

# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  height = grid.size
  width = grid[0].size

  sum = 0
  (0..height-1).each do |y|
    (0..width-1).each do |x|
      sum += perimeter_for(grid, x, y, height, width)
    end
  end

  sum
end

island_perimeter([[0,0,0,0],
                  [0,1,0,0],[1,1,1,0],[0,1,0,0],[1,1,0,0]])
