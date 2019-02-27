# @param {Character[][]} board
# @return {Boolean}

def check_collection(col)
  digits = col.reject { |c| c == '.' }
  digits == digits.uniq
end

def is_valid_sudoku(board)
  # each row
  return false unless board.map do |row|
    check_collection(row)
  end.uniq == [true]

  # transpose board
  return false unless 0.upto(8).map { |r| 0.upto(8).map { |c| board[c][r] } }.map do |row|
    check_collection(row)
  end.uniq == [true]

  # check each sction
  return (0..8).step(3).map do |x|
    (0..8).step(3).map do |y|
      check_collection(0.upto(2).map { |i| 0.upto(2).map { |j| board[x+i][y+j] } }.flatten)
    end
  end.flatten.uniq == [true]

end

board  = [
  ["5","3",".",".","7",".",".",".","."],
  ["6",".",".","1","9","5",".",".","."],
  [".","9","8",".",".",".",".","6","."],
  ["8",".",".",".","6",".",".",".","3"],
  ["4",".",".","8",".","3",".",".","1"],
  ["7",".",".",".","2",".",".",".","6"],
  [".","6",".",".",".",".","2","8","."],
  [".",".",".","4","1","9",".",".","5"],
  [".",".",".",".","8",".",".","7","9"]
]


is_valid_sudoku(board)
