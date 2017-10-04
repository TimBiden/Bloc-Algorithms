def BinaryIterative(collection, value)
  low = 0
  high = collection.length - 1

  def rerun(collection, value, high, low)
  mid = (low + high) / 2
    if high >= low
      if collection[mid] == value
        puts "Desired item is in location #{mid}."
        return mid
      elsif collection[mid] > value
        high = mid - 1
        rerun(collection, value, high, low)
      else collection[mid] < value
        low = mid + 1
        rerun(collection, value, high, low)
      end
    else
      puts 'Desired item is not in the collection.'
    end
  end

  rerun(collection, value, high, low)
end

array = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21]

BinaryIterative(array, 9)
BinaryIterative(array, 12)
