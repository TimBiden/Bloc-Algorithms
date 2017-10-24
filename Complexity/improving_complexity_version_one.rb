# This method takes n arrays as input and combine them in sorted ascending  order

def poorly_written_ruby(*arrays)
  combined_array = arrays.flatten

  sorted_array = [combined_array.shift[0]]

  combined_array.each do |val|
    for i in 0..(sorted_array.length) do
      # I was unable to find a better way of doing this with the requirement of elsif
      if val <= sorted_array[i]
        sorted_array.insert(i, val)
        break
      elsif i == sorted_array.length - 1
        sorted_array << val
        break
      end
    end
  end

  # Return the sorted array
  sorted_array
end

array1 = [1, 5, 81, 13]
array2 = [12, 61, 0, 33, 94]
array3 = [1003, 589, 544, 751, 8, 39]

poorly_written_ruby(array1, array2, array3)
