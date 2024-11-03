def bubble_sort(array)
  sorted_array = array

  loop do
    adjustments = 0
    sorted_array.each_index do |index|
      if sorted_array[index] != sorted_array.last
        if sorted_array[index] > sorted_array[index + 1]
          lesser_element = sorted_array[index + 1]
          sorted_array[index + 1] = sorted_array[index]
          sorted_array[index] = lesser_element
          adjustments += 1
        end
      end
    end
    if adjustments == 0
      break
    end
  end
  sorted_array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
