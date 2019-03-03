def max_profit(prices)
  best = 0
  bought = prices[0]

  1.upto(prices.length-1) do |i|
    if prices[i] < bought
      bought = prices[i]
    else
      best = [best, prices[i] - bought].max
    end
  end

  best
end
