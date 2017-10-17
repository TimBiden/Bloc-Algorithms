def setLength(array)
  puts "#{array} = Original Array"

  array.unshift(nil)
  length = array.length - 1

  setParent(array, length)

  array.delete_at(0)
  puts "#{array} = Final Array"
end

def setParent(array, length)
  return array if length <= 1

  parent = length / 2

  heap(array, length, parent * 2)
end

@swapCount = 0
def topSwap(array, length)
  return array if length <= 1
  @swapCount += 1
  array[1], array[length] = array[length], array[1]

  length -= 1

  setParent(array, length)
end

def heap(array, length, left)
  right = left + 1
  parent = left / 2

  topSwap(array, length) if left < 2

  if array[left].nil?
    return array
  end

  if array[right].nil? || array[left] >= array[right] || right >= (array.length - @swapCount)
    greater = left
  else
    greater = right
  end

  if array[greater] > array[parent]
    array[greater], array[parent] = array[parent], array[greater]
    left = (parent - 1) * 2
    heap(array, length, left)
  else
    left -= 2
    heap(array, length, left)
  end
end

array = [0, 5, 1, 4, 3, 6, 9, 8, 2, 7, 13]
setLength(array)
