require 'benchmark'
require_relative 'QuickSort.rb'

def minMax(array)
  len = array.length - 1
  puts "len = #{len}"
  @minValue = array[0]
  @maxValue = array[0]
  for i in 0..len
    puts "@max = #{@maxValue}"
    if array[i + 1].nil?
      @maxValue = @maxValue
    elsif array[i] > @maxValue
      @maxValue = array[i]
    end

    @minValue = i if array[i] < @minValue
  end

  getDiff(array)
end

def getDiff(array)
  numBuckets = 5
  diff = @maxValue - @minValue
  @blockSize = diff / 5

  initBuckets(array, diff, numBuckets)
end

def initBuckets(array, _diff, numBuckets)
  buckets = []

  for i in 0..(numBuckets - 1) do
    buckets.push([])
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
                 when (@minValue + @blockSize * 4)..@maxValue then 4
    end

    buckets[putInBlock].push(currentValue)
  end

  puts ' '

  for i in 0..(buckets.length - 1) do
    puts "buckets[#{i}]: #{buckets[i]}"
  end

  sortBuckets(buckets)
end

def sortBuckets(buckets)
  for i in 0..(buckets.length - 1) do
    next unless buckets[i].length > 1
    puts ' '
    puts buckets[i].to_s
    buckets[i] = quickSort(buckets[i], 0, buckets[i].length - 1)
    puts buckets[i].to_s
  end

  replace(buckets)
end

def replace(buckets)
  finalArray = []

  for i in 0..(buckets.length - 1) do
    next if (buckets.length - 1) < 1
    for j in 0..(buckets[i].length - 1) do
      finalArray.push(buckets[i].shift)
    end
  end

  puts ' '
  puts finalArray.to_s
end

array = [248, 185, 22, 288, 128, 234, 24, 206, 220, 25, 101, 91, 107, 50, 130, 229, 124, 249, 274, 92, 155, 186, 236, 32, 88, 86, 84, 273, 183, 213, 11, 232, 190, 108, 176, 167, 35, 241, 71, 16, 228, 194, 165, 179, 56, 264, 154, 191, 272, 64]

puts Benchmark.measure {minMax(array)}
# Results:  0.000000   0.000000   0.000000 (  0.000550)

# array = [0.33, 0.45, 0.13, 0.4, 0.11, 0.66, 0.89, 0.80, 0.28, 0.37, 0.13]
# puts array.to_s
# minMax(array)
