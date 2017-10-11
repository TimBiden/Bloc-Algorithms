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
      puts ' '
      puts "length = #{length}"
      puts "array[parent] = #{array[parent]}"
      puts "array[right] = #{array[right]}"
      puts "array[left] = #{array[left]}"
      puts ' '

      if array[right].nil?
        puts "Right if effing NIL"
        greater = left
      elsif array[right] > array[left]
        puts "Right isn't NIL"
        greater = right
      else
      greater = left
      end

      puts "greater = #{greater}"

      if array[greater].nil?
        puts ' '
        puts 'DAMMIT'
        puts ' '
      else
        puts ' '
        puts "array[greater] = #{array[greater]}"
        puts ' '
      end
      puts ' '
      puts "array[greater] = #{array[greater]}"
      puts ' '

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
