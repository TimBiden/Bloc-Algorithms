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

  for i in len.downto(0)
    puts "array[#{i}] = #{array[i]}"
    if array[i] < array[min]
      min = i
    end
  end

  puts "min position = #{min}"
  puts "min value = #{array[min]}"
  puts "min: #{min}, max: #{max}"

  getDif(array, min, max)
end

def getDif(array, min, max)
  dif = max - min
  blocks = dif / 5
end

array = [0.33, 0.45, 0.11, 0.4, 0.13, 0.66, 0.89, 0.80, 0.28, 0.37, 0.13]
minMax(array)
