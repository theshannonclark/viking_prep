# problem 2: By considering the terms in the Fibonacci sequence whose
# values do not exceed four million, find the sum of the even-valued terms.

def fibonacci_generator
  a, b = 0, 1
  lambda do
    a, b = b, a + b
    return a
  end
end

def sum_even_fibonacci_to(limit)
  sum = 0

  next_fibonacci = fibonacci_generator
  i = next_fibonacci.call

  while i <= limit do
    if i % 2 == 0
      sum += i
    end
    i = next_fibonacci.call
  end

  return sum
end

puts "The sum of even fibonacci numbers up to 4 million is #{sum_even_fibonacci_to(4000000)}"