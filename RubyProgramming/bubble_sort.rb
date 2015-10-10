def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
      array[i], array[i+1] = array[i+1], array[i]
      swapped = true
      end
    end

    break if not swapped
  end
  return array
end

def bubble_sort_by(array)
  swapped = true

  while swapped

    swapped = false

    (0...array.size - 1).each do |i|
      if yield(array[i], array[i+1]) < 0
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
  end

  return array
end
