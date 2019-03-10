def partition(a, left, right, pivot)
  while left <= right
    while a[left] < pivot
      left += 1
    end

    while a[right] > pivot
      right -= 1
    end

    if left <= right
      # swap(a, left, right)
      t = a[left]
      a[left] = a[right]
      a[right] = t

      left += 1
      right -= 1
    end
  end

  return left
end

def quicksort(a, left, right)
  return if left >= right
  pivot = a[(left + right) / 2]

  index = partition(a, left, right, pivot);
  quicksort(a, left, index - 1)
  quicksort(a, index, right)
end

a = Array.new(10) { Random.rand(100) }
quicksort(a, 0, a.size-1)
a
