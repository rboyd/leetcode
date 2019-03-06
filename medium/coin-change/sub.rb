# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  return 0 if amount == 0
  return -1 if coins.empty? or coins == [0] or amount < coins.min

  min_coins = Array.new(amount) { Float::INFINITY }
  (coins.min..amount).each do |cents|
    coin_count = cents % coins.min == 0 ? cents / coins.min : Float::INFINITY
    coins.sort.each do |c|
      break unless c <= cents

      if min_coins[cents-c]+1 < coin_count
        coin_count = min_coins[cents-c]+1
      else
        coin_count = (cents % c == 0) ? (cents / c) : coin_count
      end

      min_coins[cents] = coin_count
    end
  end
  return min_coins[amount] == Float::INFINITY ? -1 : min_coins[amount].to_i
end

#coin_change([1,5,10], 5)  # => 1
#coin_change([2], 3)
#(1..33).map { |i|  {i.to_i => coin_change([1,5,10,25], i)} }


3
#coin_change([1,2,5], 11)             # => 3
#coin_change([2], 3)
coin_change([186,419,83,408], 6249)

#coin_change([2], 1)  # => -1

coin_change([1,2], 2)
