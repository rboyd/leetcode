# def fizz_buzz(n)
#   (1..n).map do |i|
#     if (i % 3 == 0) and (i % 5 == 0)
#       'FizzBuzz'
#     elsif (i % 3 == 0)
#       'Fizz'
#     elsif i % 5 == 0
#       'Buzz'
#     else
#       i.to_s
#     end
#   end
# end

def fizz_buzz(n)
  (1..n).map do |i|
    ret = ''
    ret += 'Fizz' if i % 3 == 0
    ret += 'Buzz' if i % 5 == 0
    ret.empty? ? i.to_s : ret
  end
end
#fizz_buzz(15)
