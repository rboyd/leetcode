# explore DP solution in log N time at https://leetcode.com/problems/rotated-digits/solution/

M = {'0' => '0',
     '1' => '1',
     '2' => '5',
     '5' => '2',
     '6' => '9',
     '8' => '8',
     '9' => '6'}

def good?(i)
  s = i.to_s.chars
  return false if s.any? { |c| c == '3' or c == '4' or c == '7' }
  i != i.to_s.chars.map { |n| M[n] }.join('').to_i
end

# @param {Integer} n
# @return {Integer}
def rotated_digits(n)
  num_good = 0
  1.upto(n) do |i|
    num_good += 1 if good?(i)
  end
  num_good
end


rotated_digits(0)
