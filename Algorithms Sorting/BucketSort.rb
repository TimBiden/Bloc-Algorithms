require_relative 'QuickSort.rb'

def minMax(array)
  len = array.length - 1
  @min = array[0]
  @max = array[0]
  for i in 0..len
    if array[i + 1].nil?
      @max = @max
    elsif array[i] > array[@max]
      @max = i
    end

    @min = i if array[i] < array[@min]
  end

  @maxValue = array[@max]
  @minValue = array[@min]

  getDiff(array)
end

def getDiff(array)
  numBuckets = 5
  diff = array[@max] - array[@min]
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

array = [0.33, 0.45, 0.13, 0.4, 0.11, 0.66, 0.89, 0.80, 0.28, 0.37, 0.13]
puts array.to_s
minMax(array)
