# @param {Integer[][]} nums
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(nums, r, c)
  orig_rows = nums.size
  orig_cols = nums[0].size

  return nums unless (r * c) == (orig_rows * orig_cols)

  ret = []
  cur = []
  (0..orig_rows-1).each do |i|
    (0..orig_cols-1).each do |j|
      cur << nums[i][j]
      if cur.size == c
        ret << cur
        cur = []
      end
    end
  end
  ret
end

#matrix_reshape([[1,2], [3,4]], 1, 4) == [[1,2,3,4]]
#matrix_reshape([[1,2], [3,4]], 2, 4) == [[1,2,3,4]]
