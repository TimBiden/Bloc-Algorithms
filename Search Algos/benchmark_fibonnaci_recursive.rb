require 'benchmark'

def fib(n)
  if n == 0
    # #1
    0
  elsif n == 1
    # #2
    1
  else
    # #3
    fib(n - 1) + fib(n - 2)
  end
end

puts Benchmark.measure {fib(20)}
