@tripList = []

def calcDistance(currentPoint, nextPoint)
  sum_of_squares = 0
  currentPoint.each_with_index do |currentPoint_coord,index|
    sum_of_squares += (currentPoint_coord - nextPoint[index]) ** 2
  end
  distance = Math.sqrt( sum_of_squares )
  puts "distance = #{distance.round(2)}"

  distance.round(2)
end

def nearestNeighbor(cities, current_city)
  @tripList.push current_city
  currentPoint = cities[current_city]
  puts "Got it. #{currentPoint}"

  cities.each do |city, array|
    puts ' '
    unless city == current_city
      puts "Potentially Next City = #{city}"
      nextPoint = array
      # puts "currentLongitude = #{array[0]}"
      # puts "currentLatitude = #{array[1]}"
      calcDistance(currentPoint, nextPoint)
    end
  end
  puts ' '
  puts "Trip list = #{@tripList}"
end

cities = {
  'Orlando' => [2, -4],
  'Los Angeles' => [-3, -2],
  'Sioux Falls' => [0, 1],
  'Detroit' => [1, 1],
  'Dallas' => [-1, -2],
  'Portland' => [4, 4],
  'Miami' => [4, -4],
  'Tucson' => [-2, -2]
}

nearestNeighbor(cities, 'Los Angeles')
