def heapSort(array)
  puts "#{array} ** Original Array"

  length = array.length

  def heap(array, length)
    parent = length / 2
    adjParent = parent - 1
    right = parent * 2
    left = right - 1
    swap = false

    while parent >= 0

      if array[right].nil?
        greater = left
      elsif array[right] > array[left]
        greater = right
      else
      greater = left
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

  heap(array, length)
end

array = [0, 5, 1, 4, 3, 6, 9, 8, 2, 7]
heapSort(array)
