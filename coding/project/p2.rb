# problem 2: factorial

# Write a method factorial which takes a number and returns the product
# of every number up to the current number multiplied together.

def factorial(integer)
  product = 1
  (2..integer).each do |i|
    product *= i
  end
  return product
end

puts factorial(5)
# => 120
# (from 1*2*3*4*5)