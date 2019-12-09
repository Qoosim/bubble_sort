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

def bubble_sort_by (arr)
  arr.each do |x|
    arr.each_with_index do |value,key|
      if key != (arr.length()-1)
        if yield(value, arr[key+1]) > 0
          arr[key],arr[key+1] = arr[key+1],arr[key]
        end
      end
    end
  end
   arr
end

arr = [3,5,6,9,2,3]
string = ["hey","hello","hi"]
p bubble_sort_by(string){|a,b| b.length - a.length}
p bubble_sort(arr)