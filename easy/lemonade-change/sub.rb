
def lemonade_change(bills)
  fives, tens = 0, 0
  bills.each do |tx|
    if tx == 5
      fives += 5
      next
    end

    if tx == 10
      fives -= 5
      return false if fives < 0
      tens += 10
    end

    if tx == 20
      r = 15
      if tens > 0
        tens -= 10
        r -= 10
      end
      fives -= r
      return false if (fives < 0 or tens < 0)
    end
  end
  true
end

lemonade_change([5,5,10,10,20]) == false

lemonade_change([5,5,10,20,5,5,5,5,5,5,5,5,5,10,5,5,20,5,20,5]) == true


# @param {Integer[]} bills
# @return {Boolean}
# def lemonade_change(bills)
#   twenty = []
#   ten = []
#   bills.sort_by { |num| -num }.each do |tx|
#     case tx
#     when 20
#       twenty << 15
#     when 10
#       ten <<  5
#       if !twenty.empty? and twenty[-1] >= 10
#         c = twenty.pop
#         c -= 10
#         twenty.unshift(c) if c > 0
#       end
#     when 5
#       if !ten.empty?
#         ten.pop
#       elsif !twenty.empty?
#         c = twenty.shift
#         c -= 5
#         twenty.unshift(c) if c > 0
#       end
#     end
#     twenty
#     ten
#   end
#   twenty.empty? and ten.empty?
# end

lemonade_change([5,5,5,10,20]) == true
lemonade_change([5,5,10]) == true
lemonade_change([10,10]) == false


lemonade_change([5,5,10,10,20]) == false

lemonade_change([])

lemonade_change([5, 5, 5, 20, 5, 5, 20, 5, 5, 5, 20, 5, 20, 10, 5, 5]) == false

20.times do
  txs = Array.new((0..Random.rand(20)).map {
                    n = (Random.rand(3)+1)
                    n == 3 ? 20 : n * 5
                  })
  puts "#{txs}"
end
