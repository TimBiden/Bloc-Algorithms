require "Benchmark"

def fib(n)
  numeroUno = 0
  numeroDos = 1

  for iterator in 0..n do
    totality = numeroUno + numeroDos
    numeroUno = numeroDos
    numeroDos = totality
  end
  puts totality
  totality
end

# puts fib(0)
# puts fib(1)
# puts fib(2)
# puts fib(3)
# puts fib(4)
# puts fib(5)
# puts fib(6)
# puts fib(7)
# puts fib(8)
# puts fib(9)

puts Benchmark.measure {fib(20)}