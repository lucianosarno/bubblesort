def bubble_sort_by(array_to_be_sortedby)
  is_sorted = false
  while !is_sorted
    is_sorted = true
    (0...array_to_be_sortedby.length - 1).each do |i|
      if yield(array_to_be_sortedby[i] , array_to_be_sortedby[i.next]).positive?
        array_to_be_sortedby[i], array_to_be_sortedby[i.next] = array_to_be_sortedby[i.next], array_to_be_sortedby[i]
        is_sorted = false
      end
    end
  end
  array_to_be_sortedby
end

p ( bubble_sort_by(["hi","hello","hey"]) do |left,right|
   left.length - right.length
   end )