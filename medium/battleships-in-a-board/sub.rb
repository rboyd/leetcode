# @param {Character[][]} board
# @return {Integer}
def count_battleships(board)
  count = 0
  0.upto(board.size-1) do |i|
    0.upto(board[i].size-1) do |j|
      board[i][j]
      case board[i][j]
      when 'X'
        if (i - 1) >= 0 and board[i-1][j] != '.'
          board[i][j] = board[i-1][j]
        elsif (j - 1) >= 0 and board[i][j-1] != '.'
          board[i][j] = board[i][j-1]
        else
          count += 1
          board[i][j] = count
        end
      end
    end
  end

  count
end


# count_battleships [["X",".",".","X"],[".",".",".","X"],[".",".",".","X"]]


# a = Array.new { Random.rand(20) }
