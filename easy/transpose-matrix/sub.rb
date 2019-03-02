# @param {Integer[][]} a
# @return {Integer[][]}
def transpose(a)
  a_rows = a.length
  a_cols = a[0].length

  b = []
  0.upto(a_cols-1) do |i|
    b << Array.new(a_rows)
  end

  0.upto(a_cols-1) do |i|
    0.upto(a_rows-1) do |j|
      b[i][j] = a[j][i]
    end
  end

  b
end


transpose([[1,2,3],[4,5,6],[7,8,9]]) == [[1,4,7],[2,5,8],[3,6,9]]
