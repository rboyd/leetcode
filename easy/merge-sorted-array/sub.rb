# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  i = m+n-1
  j = m-1
  k = n-1
  while k >= 0 and j >= 0 do
    case [nums1[j], nums2[k]].max
    when nums1[j]
      nums1[i] = nums1[j]
      i -= 1
      j -= 1
    when nums2[k]
      nums1[i] = nums2[k]
      i -= 1
      k -= 1
    end
  end

  while k >= 0 do
    nums1[i] = nums2[k]
    i -= 1
    k -= 1
  end
end

ar1 = [1,0]
merge(ar1, 1, [2], 1)
ar1


#[1, 2, 5]   # => [1, 2, 5]
#[9, 6, 10]  # => [9, 6, 10]

ar1 = [1,2,3,0,0,0]
merge(ar1, 3, [2,5,6], 3)
ar1

ar2 = [0]
merge(ar2, 0, [1], 1)
ar2
