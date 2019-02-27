# @param {Integer[]} flowers
# @param {Integer} k
# @return {Integer}
def k_empty_slots(flowers, k)
  (0..flowers.size-k-2).each do |left|                                          # => 0..6
    right = left + k + 1                                                        # => 3,    4
    found = true                                                                # => true, true
    (left+1..right-1).each do |middle|                                          # => 1..2, 2..3
      found = false if flowers[middle].between?(flowers[left], flowers[right])  # => nil, false, nil, nil
    end                                                                         # => 1..2, 2..3

    puts [left, right] if found                          # => nil,   nil
    puts [flowers[left], flowers[right]] if found        # => nil,   nil
    puts [flowers[left], flowers[right]].max if found    # => nil,   nil
    return [flowers[left], flowers[right]].max if found  # => false, true
  end
  return -1
end                                                      # => :k_empty_slots

#k_empty_slots([1,3,2], 1)          # => 2
#k_empty_slots([1,2,3], 1)          # => -1
#k_empty_slots([1,2,3,4,5,7,6], 1)
k_empty_slots([6,5,8,9,7,1,10,2,3,4],2)  # => 7

puts (5..3)  # => nil

# >> 1
# >> 4
# >> 5
# >> 7
# >> 7
# >> 5..3
