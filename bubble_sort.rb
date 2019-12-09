def bubble_sort(arr)

  n = arr.length
  loop do
    swapped = false
    (n-1).times do |k|
      if arr[k] > arr[k + 1]
        arr[k], arr[k + 1] = arr[k + 1], arr[k]
        swapped = true
      end
    end
    break if !swapped
  end
  print arr
end

arr = [9, 3, 8, 1, 4, 7, 10, 6, 5, 2]

p bubble_sort(arr)