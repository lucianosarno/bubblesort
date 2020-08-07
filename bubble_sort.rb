def bubble_sort(array_to_be_sorted)
  is_sorted = false
  until is_sorted
    is_sorted = true
    (0...array_to_be_sorted.length - 1).each do |i|
      next if array_to_be_sorted[i] > array_to_be_sorted[i.next]
        array_to_be_sorted[i], array_to_be_sorted[i.next] = array_to_be_sorted[i.next], array_to_be_sorted[i]
        is_sorted = false
      end
    end
  end
  array_to_be_sorted
end

p bubble_sort([3, 1, 8, 0, 2, 10, 9])
