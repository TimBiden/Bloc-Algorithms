@count = 0
def cut(min, max)
  @count += 1
  puts ' '
  puts "@count = #{@count}"
  puts "Max = #{max}"
  puts "Min = #{min}"
  middle = ((max - min) / 2) + min
  puts "Middle = #{middle}"
  if min == middle
    puts "End Result is #{middle}"
    return middle
  else
    cut(middle, max)
  end
end

cut(0, 100)
