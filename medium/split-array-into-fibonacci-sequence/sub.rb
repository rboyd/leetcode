# def is_fibo?(nums)
#   (nums.length-1).downto(2) do |k|
#     return false unless nums[k] == nums[k-1] + nums[k-2]
#   end

#   return true
# end

def fibo_so_far(s, splits)
  return false if splits.length < 3

  i = 0
  nums = []
  splits.each do |j|
    num = s[i,j]
    # check for leading zero
    return false if num[0] == '0' and num.length > 1
    num = num.to_i
    return false if num > (2**31)-1
    nums << num
    i += j
  end

#  puts "nums: #{nums}"

  # check if fibo
  (nums.length-1).downto(2) do |k|
    return false unless nums[k] == nums[k-1] + nums[k-2]
  end

  return nums
end

def aux(s, ret, constr, n)
  # if n == 0
  #   final = fibo_so_far(s, constr.dup)
  #   ret << final if final
  #   return
  # end

  1.upto(n) do |i|
    return [] if i > 10
    new_constr = constr.dup << i
    if constr.length < 2
#      puts "here1"
      aux(s, ret, new_constr, n-i)
      return ret if !ret.empty?
    else
      # test for fibo so far
#      puts "here2: #{new_constr}"
      fsf = fibo_so_far(s, new_constr)
      if fsf
        if n-i == 0
          puts "** FOUND **"
          ret << fsf if fsf
          return fsf
        end
        #        puts "was fibo so far"
#              puts "here3"
        aux(s, ret, new_constr, n-i)
        return ret if !ret.empty?
      end
    end
  end
  ret
end

# @param {String} s
# @return {Integer[]}
def split_into_fibonacci(s)
  #  return [] if s[0] == '0'   # => true
  return [] if s.empty?
  return [] if s.length < 3

  ret = aux(s, [], [], s.length)
  return [] if ret.empty?
  ret.first
end

#aux([], [], 7)
split_into_fibonacci('112358130')
#split_into_fibonacci('1101111')
#split_into_fibonacci('11235813')

#split_into_fibonacci('1101111')



#split_into_fibonacci('123456579')
#split_into_fibonacci('0000')
#split_into_fibonacci("0123")

#is_fibo?(["110", "1", "111"])  # => false




#split_into_fibonacci("1101111")  # => [11, 0, 11, 11]
