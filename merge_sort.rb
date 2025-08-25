def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2

  left_half = arr[0...mid]
  right_half = arr[mid...arr.length]

  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)
  merge(sorted_left, sorted_right)
end

def merge(left, right)
  result = []
  left_index = 0
  right_index = 0

  while left_index < left.length && right_index < right.length
    if left[left_index] <= right[right_index]
      result << left[left_index]
      left_index += 1
    else
      result << right[right_index]
      right_index += 1
    end
  end

  while left_index < left.length
    result << left[left_index]
    left_index += 1
  end

  while right_index < right.length
    result << right[right_index]
    right_index += 1
  end
  result
end

