def calcDistance(nextPoint, city)
  sum_of_squares = 0

  # Find distance between cities
  @currentPoint.each_with_index do |currentPoint_coord, index|
    sum_of_squares += (currentPoint_coord - nextPoint[index])**2
  end
  distance = Math.sqrt(sum_of_squares).round(2)

  # push lowest distance to array for sorting
  if @closestCity[1].nil? || distance <= @closestCity[1]
    @closestCity[0] = city
    @closestCity[1] = distance
  end
end

def loop(cities, current_city)
  @closestCity = []
  @currentPoint = cities[current_city]

  # Remove current city from list so as to not repeat
  cities.delete_if { |key, _value| key == current_city }

  # Find distance from current city to all remaining cities
  cities.each do |city, array|
    nextPoint = array
    calcDistance(nextPoint, city)
  end

  # Add next city to end of array
  @tripList.push current_city

  # Loop through hash until all cities have been visited
  loop(cities, @closestCity[0]) until cities.empty?
end

# Control center function
def nearestNeighbor(cities, current_city)
  puts 'Unordered list and coordinates:'
  puts cities
  @tripList = []
  # Notate originating city to return to
  @firstCity = current_city
  @currentPoint = cities[current_city]

  loop(cities, current_city)

  # Add originating city to end of list
  @tripList.push current_city

  puts ' '
  puts "Trip list = #{@tripList}"
end

cities = {
  'Orlando' => [2, -4],
  'Los Angeles' => [-4, -2],
  'Sioux Falls' => [0, 1],
  'Detroit' => [1, 1],
  'D.C.' => [5, 0],
  'Dallas' => [-1, -2],
  'Seattle' => [-5, 5],
  'Portland' => [4, 6],
  'Baton Rouge' => [1, -3],
  'Tucson' => [-2, -2]
}

nearestNeighbor(cities, 'Los Angeles')
