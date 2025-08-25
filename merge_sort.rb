def merge_sort(arr, lb, ub)
  if lb < ub
    mid = (lb + ub) / 2
    merge_sort(arr, lb, mid)
    merge_sort(arr, mid + 1, ub)
    merge(arr, lb, mid, ub)
  end
end

def merge(arr, lb, mid, ub)
  i = lb
  j = mid + 1
  k = lb
  temp = []

  while i <= mid && j <= ub
    if arr[i] <= arr[j]
      temp << arr[i]
      i += 1
    else
      temp << arr[j]
      j += 1
    end
    k += 1
  end

  if i > mid
    while j <= ub
      temp << arr[j]
      j += 1
      k += 1
    end
  else
    while i <= mid
      temp << arr[i]
      i += 1
      k += 1
    end
  end

  (lb..ub).each_with_index do |index, k|
    arr[index] = temp[k]
  end
end

