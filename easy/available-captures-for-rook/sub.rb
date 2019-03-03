def captures(board, rx, ry, dx, dy)
  return 0 if [rx+dx, ry+dy].min < 0
  return 0 if [rx+dx, ry+dy].max > 7

  case board[rx+dx][ry+dy]
  when '.'
    captures(board, rx+dx, ry+dy, dx, dy)
  when 'B'
    0
  when 'p'
    1
  end
end

# @param {Character[][]} board
# @return {Integer}
def num_rook_captures(board)
  rx = 0
  ry = 0
  0.upto(7) do |i|
    0.upto(7) do |j|
      if board[i][j] == 'R'
        rx = i
        ry = j
        break
      end
    end
  end


  captures(board, rx, ry, 0, 1) +
  captures(board, rx, ry, 0, -1) +
  captures(board, rx, ry, 1, 0) +
  captures(board, rx, ry, -1, 0)
end

num_rook_captures([[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","R",".",".",".","p"],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]]) == 3

num_rook_captures([[".",".",".",".",".",".",".","."],[".","p","p","p","p","p",".","."],[".","p","p","B","p","p",".","."],[".","p","B","R","B","p",".","."],[".","p","p","B","p","p",".","."],[".","p","p","p","p","p",".","."],[".",".",".",".",".",".",".","."],[".",".",".",".",".",".",".","."]]) == 0
