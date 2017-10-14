def BinaryIterative(collection, value)
  low = 0
  high = collection.length - 1

  while low <= high
    mid = (low + high) / 2
    if collection[mid] == value
      puts "Desired item is in location #{mid}."
      return mid
    elsif collection[mid] > value
      high = mid - 1
    else collection[mid] < value
      low = mid + 1
    end
  end
  puts "Desired item is not in the collection."
end

array = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21]

BinaryIterative(array, 8)
BinaryIterative(array, 9)
