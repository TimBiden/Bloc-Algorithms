def heapSort(array)
  puts "#{array} ** Original Array"

  length = array.length

  heap(array, length)
end

def heap(array, length)
  parent = length / 2
  adjParent = parent - 1
  right = parent * 2
  left = right - 1
  swap = false

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
      swap = true
    end

    parent -= 1
    puts array.to_s

    length -= 1
    heap(array, length)
  end
end

array = [0, 5, 1, 4, 3, 6, 9, 8, 2, 7]
heapSort(array)
