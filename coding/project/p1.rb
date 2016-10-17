# problem 1: power

# Write a method power which takes two integers (base and exponent)
# and returns the base raised to the power of exponent. Do not use Ruby’s **
# operator for this!

def power(base, exponent)
	result = 1

	exponent.times do
		result *= base
	end
	return result
end

puts power(3, 4)
# => 81