require 'benchmark'

def partition(array, low, high)
  dupArray = array # Duplicate Array
  dupLow = low # Duplicate Low
  dupHigh = high # Duplicate High

  def swap(dupArray, dupLow, dupHigh)
    dupArray[dupLow], dupArray[dupHigh] = dupArray[dupHigh], dupArray[dupLow]
  end

  i = dupLow
  s = dupLow

  while s < dupHigh
    if dupArray[s] <= dupArray[dupHigh]
      swap(dupArray, s, i)
      i += 1
    end
    s += 1
 end
  swap(dupArray, dupHigh, i)
  # puts "I = #{i}"
  i
end

def quickSort(array, low, high)
  # puts "Array 1 = #{array}"
  if low < high
    q = partition(array, low, high)
    quickSort(array, low, q - 1)
    quickSort(array, q + 1, high)
    # puts "Array 2 = #{array}"
  end

  array
end

# array = [9]
# quickSort(array, 0, array.length - 1)
# puts "Array after sorting: #{array}"
#
# array = [9, 7, 5, 11, 12, 2, 14, 3, 10, 6]
# quickSort(array, 0, array.length - 1)
# puts 'Expected after sort: [2, 3, 5, 6, 7, 9, 10, 11, 12, 14]'
# puts "Array after sorting: #{array}"

array = [248, 185, 22, 288, 128, 234, 24, 206, 220, 25, 101, 91, 107, 50, 130, 229, 124, 249, 274, 92, 155, 186, 236, 32, 88, 86, 84, 273, 183, 213, 11, 232, 190, 108, 176, 167, 35, 241, 71, 16, 228, 194, 165, 179, 56, 264, 154, 191, 272, 64]

puts Benchmark.measure {quickSort(array, 0, array.length - 1)}
# Results:  0.000000   0.000000   0.000000 (  0.000101))
