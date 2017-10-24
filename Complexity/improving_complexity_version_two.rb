# This method takes n arrays as input and combine them in sorted ascending  order

def poorly_written_ruby(*arrays)
  combined_array = arrays.flatten

  sorted_array = []
  maxIndex = combined_array.length - 1

  for i in 0..(maxIndex / 2) do
    # Find min and max values
    minValue = combined_array.min
    maxValue = combined_array.max

    # Remove min and max values from flattened array
    combined_array.delete(minValue)
    combined_array.delete(maxValue)

    # Add min and max values to new array
    sorted_array[i] = minValue
    sorted_array[maxIndex] = maxValue

    maxIndex -= 1
  end

  # Return the sorted array
  sorted_array
end

array1 = [1, 5, 81, 13]
array2 = [12, 61, 0, 33, 94]
array3 = [1003, 589, 544, 751, 191, 8, 39]

poorly_written_ruby(array1, array2, array3)
