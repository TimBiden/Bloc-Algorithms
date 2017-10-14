def minMax(array)
  len = array.length - 1
  min = array[0]
  max = array[0]
  for i in 0..len
    puts "array[#{i}] = #{array[i]}"
    if array[i + 1].nil?
      puts "max position = #{max}"
      puts "max value = #{array[max]}"
      max = max
    elsif array[i] > array[max]
      max = i
    end
  end
end

array = [0.33, 0.45, 0.11, 0.4, 0.13, 0.66, 0.89, 0.80, 0.28, 0.37, 0.13]
minMax(array)
