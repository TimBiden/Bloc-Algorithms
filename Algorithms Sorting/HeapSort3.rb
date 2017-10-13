def setLength(array)
  array.unshift(nil)
  length = array.length - 1
  return array if length <= 1

  puts "#{array} = Original Array"

  setParent(array, length)
end

def setParent(array, length)
  return array if length <= 1

  parent = length / 2

  heap(array, length, parent * 2)
end

def heap(array, length, left)
  right = left + 1
  parent = left / 2

  topSwap(array, length) if left < 2

  if array[right].nil? || array[left] >= array[right] || right >= (array.length - @swapCount)
    greater = left
  elsif array[left].nil?
    return array
  else
    greater = right
  end

  if array[greater] > array[parent]
    parentSwap(array, greater, parent, length)
  else
    left -= 2
    heap(array, length, left)
  end
end

def parentSwap(array, greater, parent, length)
  return array if length <= 1

  array[greater], array[parent] = array[parent], array[greater]

  left = (parent - 1) * 2
  heap(array, length, left)
end

@swapCount = 0
def topSwap(array, length)
  return array if length <= 1
  @swapCount += 1
  puts ' '
  puts 'topSwap'
  puts "Before Swap: #{array}"
  puts "length = #{length}"
  array[1], array[length] = array[length], array[1]
  puts "After Swap: #{array}"

  puts 'Values'
  puts length.to_s

  length -= 1

  if length <= 1
    array.delete_at(0)
    return array
  end

  puts "length = #{length}"

  setParent(array, length)
end

array = [0, 5, 1, 4, 3, 6, 9, 8, 2, 7, 13]
setLength(array)

puts array.to_s
