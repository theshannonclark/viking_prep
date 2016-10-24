# problem 5: primes

# Write a method is_prime? which takes in a number and returns
# true if it is a prime number.


def is_prime?(number)
  result = true

  # 2 is the only even prime number
  if number == 2
    result = true
  elsif number < 2 or number % 2 == 0
    result = false
  else
    # if there aren't any multiples of n before the square root
    # of n, there aren't any at all.
    root = Math.sqrt(number).ceil
    (3..root).each do |i|
      if number % i == 0
        result = false
        break
      end
    end
  end
  return result
end

puts is_prime?(1)
# => false
puts is_prime?(2)
# => true
puts is_prime?(7)
# => true
puts is_prime?(14)
# => false
puts is_prime?(102161)
# => true
puts is_prime?(563823)
# => false