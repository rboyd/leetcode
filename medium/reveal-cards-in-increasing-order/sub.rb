# @param {Integer[]} deck
# @return {Integer[]}
def deck_revealed_increasing(deck)
  sorted = deck.sort {|x,y| -(x <=> y)}
  ret = []
  while !sorted.empty? do
    card = sorted.shift
    if ret.empty?
      ret << card
    else
      (0..ret.length-1).each do |i|
        t = ret[-1]
        ret[-1] = ret[i]
        ret[i] = t
      end
      ret.unshift card
    end
  end

  ret
end


deck_revealed_increasing([17,13,11,2,3,5,7]) == [2,13,3,11,5,17,7]


deck_revealed_increasing([])
