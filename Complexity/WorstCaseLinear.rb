def linear(max)
  count = 0

  for i in 0..max do
    for j in 0..i do
      count += 1
    end
    puts "For #{i}, it could take #{j} times to find the item."
  end
end

linear(10)
