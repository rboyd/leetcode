def sort(array)
  (0..(array.length - 1)).each do |i|      # => 0..6
    j = i                                  # => 0, 1, 2, 3, 4, 5, 6
    while j > 0 && array[j -1] > array[j]  # => false, false, false, true, true, true, false, false, true, false, ...

      tmp = array[j - 1]       # => 3,  2,  1,  7
      array[j - 1] = array[j]  # => -3, -3, -3, 4
      array[j] = tmp           # => 3,  2,  1,  7
      j -= 1                   # => 2,  1,  0,  4
    end                        # => nil, nil, nil, nil, nil, nil, nil
  end                          # => 0..6
  array                        # => [-3, 1, 2, 3, 4, 7, 8]
end                            # => :sort

sort([1, 2, 3, -3, 7, 4, 8])  # => [-3, 1, 2, 3, 4, 7, 8]
