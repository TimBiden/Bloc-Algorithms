Given the alphabetically sorted collection in this checkpoint, how many iterations would it take to find the value G using linear search?
  7.

Given the alphabetically sorted collection in this checkpoint, how many iterations would it take to find the value G using binary search?
  3.

Calculate fib(10), fib(11), fib(12) by hand.
  fibonacci(9): 34 + 55 = 89
  fibonacci(10): 55 + 89 = 144
  fibonacci(11): 89 + 144 = 233
  fibonacci(12): 144 + 233 = 377

Recursive vs Iterative: Best times (Elapsed Real Time)
  Recursive: 0.001496
  Iterative:   0.000041

1. Given an unsorted collection of a million items, which algorithm would you choose between linear search and binary search? Would you use an iterative or recursive solution? Explain your reasoning.

  For an unsorted collection you'd have to go linear search because there's no way of knowing which half of the binary search the desired value would land in.

  I would use iterative search because in my fibonacci test, it smashed the recursive version. And in general, I'm not a fan of recursion. Though I am excited to put it to a real test.

Given a sorted collection of a million items, which algorithm would you choose between linear search and binary search? Would you use an iterative or recursive solution? Explain your reasoning.

  In a sorted collection, a Binary search would be far faster and more efficient.

  It would be interesting to do a test of recursion vs iteration in a binary search. I really don't know which would be faster. I have to assume that recursion is often faster because if it was always slower, there'd be no real use for it.
