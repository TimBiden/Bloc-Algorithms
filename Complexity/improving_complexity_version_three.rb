# This method takes n arrays as input and combine them in sorted ascending  order

def poorly_written_ruby(*arrays)
  combined_array = arrays.flatten
  count = 0

  for i in 0..(combined_array.length - 1) do
    minValue = combined_array[i]
    puts "minValue 1 = #{minValue}"

    for j in (i + 1)..(combined_array.length - 1) do
      if combined_array[j] <= minValue
        minValue = combined_array[j]
        minIndex = j
      end
      puts count += 1
    end

    puts "minValue 2 = #{minValue}"

    unless minValue == combined_array[i]
      tempValue = combined_array[i]
      combined_array[i] = combined_array[minIndex]
      combined_array[minIndex] = tempValue
    end
  end

  puts combined_array

  # Return result
  combined_array
end

array1 = [1, 5, 81, 13]
array2 = [12, 61, 0, 33, 94]
array3 = [1003, 589, 544, 751, 191, 8, 39]

poorly_written_ruby(array1, array2, array3)
