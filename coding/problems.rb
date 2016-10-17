# problem 1: Find the sum of all the multiples of 3 or 5 below 1000

$sum = 0
1000.times do |i|
	if (i % 3 == 0) or (i % 5 == 0)
		$sum += i
	end
end

puts "The sum of all multiples of 3 and 5 up to 1000 is #$sum"