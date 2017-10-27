@tripList = []
@closestCity = []

def calcDistance(nextPoint, city)
  sum_of_squares = 0
  @currentPoint.each_with_index do |currentPoint_coord, index|
    sum_of_squares += (currentPoint_coord - nextPoint[index])**2
  end
  distance = Math.sqrt(sum_of_squares).round(2)
  puts "distance = #{distance}"

  if @closestCity[1].nil? || distance <= @closestCity[1]
    @closestCity[0] = city
    @closestCity[1] = distance
  end
end

def loop(cities, current_city)
  cities.delete(current_city)

  cities.each do |city, array|
    puts ' '
    puts "Potentially Next City = #{city}"
    nextPoint = array
    calcDistance(nextPoint, city)
  end
  @tripList.push current_city

  loop(cities, @closestCity[0])
end

def nearestNeighbor(cities, current_city)
  firstCity = { current_city => cities[current_city] }
  @tripList.push current_city
  @currentPoint = cities[current_city]

  loop(cities, current_city) # until cities.empty?

  puts "@closestCity = #{@closestCity}"
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
