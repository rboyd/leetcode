class SnakeGame
  def initialize(width, height, food)
    @score = 0
    @width = width
    @height = height
    @food = food
    @body = [[0, 0]]
  end

  def eats?(pos)
    return if @food.empty?
    pos == @food[0]
  end

  def shift_body(next_pos)
    @body << next_pos
    @body.shift
  end

  def collides?
    @body.uniq.size != @body.size
  end

  def head
    @body[-1]
  end

  def move(direction)
    next_pos = case direction
               when 'U'
                 return -1 if head[0] == 0
                 [head[0] - 1, head[1]]
               when 'L'
                 return -1 if head[1] == 0
                 [head[0], head[1] - 1]
               when 'R'
                 return -1 if head[1] == @width-1
                 [head[0], head[1] + 1]
               when 'D'
                 return -1 if head[0] == @height-1
                 [head[0] + 1, head[1]]
               end

    if eats?(next_pos)
      @food.shift
      @score += 1
      @body << next_pos
    else
      shift_body(next_pos)
      return -1 if collides?
    end

    @score
  end
end

#obj = SnakeGame.new(3, 2, [[1,2],[0,1]])
obj = SnakeGame.new(3,3, [[2,0],[0,0],[0,2],[0,1],[2,2],[0,1]])


obj.move("D")
obj.move("D")
obj.move("R")
obj.move("U")
obj.move("U")
obj.move("L")

obj.move("D")
obj.move("R")
obj.move("R")
obj.move("U")
obj.move("L")
obj.move("L")
obj.move("D")
obj.move("R")
obj.move("U")
