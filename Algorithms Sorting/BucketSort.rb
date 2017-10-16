def minMax(array)
  len = array.length - 1
  @min = array[0]
  @max = array[0]
  for i in 0..len
    puts "array[#{i}] = #{array[i]}"
    if array[i + 1].nil?
      @max = @max
    elsif array[i] > array[@max]
      @max = i
    end

    @min = i if array[i] < array[@min]
  end

  puts " "
  @maxValue = array[@max]
  puts "@max value = #{@maxValue}"
  puts "@max position = #{@max}"

  puts " "
  @minValue = array[@min]
  puts "@min value = #{@minValue}"
  puts "@min position = #{@min}"

  puts " "
  puts "@min position: #{@min}, @max position: #{@max}"



  getDiff(array)
end

def getDiff(array)
  diff = array[@max] - array[@min]
  @blockSize = diff / 5

  puts ""
  puts "Diff between @min and @max is #{diff}"
  puts "Each block is #{@blockSize} in size"

  initBuckets(array, diff)
end

def initBuckets(array, diff)
  numBuckets = 5
  buckets = []

  for i in 0..(buckets.length - 1) do
    buckets[i] = []
  end

  distribute(array, buckets)
end

def distribute(array, buckets)
  for i in 0..(array.length - 1) do
    currentValue = array[i]
    putInBlock = case currentValue
    when @minValue..(@minValue + @blockSize) then 0
    when (@minValue + @blockSize)..(@minValue + @blockSize * 2) then 1
    when (@minValue + @blockSize * 2)..(@minValue + @blockSize * 3) then 2
    when (@minValue + @blockSize * 3)..(@minValue + @blockSize * 4) then 3
    when (@minValue + @blockSize * 4)..(@maxValue) then 4
    end

    puts " "
    puts "currentValue = #{currentValue}"
    puts "putInBlock = #{putInBlock}"
    puts " "
    puts "buckets = #{buckets}"

    buckets.push(currentValue)
  end

  for i in 0..5 do
    puts "Here's buckets[#{i}]: #{buckets[i]}"
  end
end

array = [0.33, 0.45, 0.11, 0.4, 0.13, 0.66, 0.89, 0.80, 0.28, 0.37, 0.13]
minMax(array)
