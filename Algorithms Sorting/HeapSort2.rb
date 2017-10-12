def heapSort(array)
  puts "#{array} ** Original Array"

  heap(array, array.length)

  # topSwap(array, array.length)
end

def heap(array, length)
  parent = length / 2
  right = parent * 2
  left = right - 1

  while parent >= 0

    greater = if array[right].nil?
                left
              elsif array[right] > array[left]
                right
              else
                left
              end

    if array[greater] > array[parent]
      array[greater], array[parent] = array[parent], array[greater]
    end

    parent -= 1
    puts array.to_s

    length -= 2
    heap(array, length)
  end
end

def topSwap(array, length)
  puts "array[0] = #{array[0]}"
  puts "array[length] = #{array[length]}"
  array[0], array[length] = array[length], array[0]
  length -= 1

  heap(array, length - @count)
end

array = [0, 5, 1, 4, 3, 6, 9, 8, 2, 7]
heapSort(array)
