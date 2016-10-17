# problem 3: uniques

# Write a method uniques which takes an array of items and returns
# the array without any duplicates. Don’t use Ruby’s uniq method!

def uniques(array)
	result = []
	array.each do |element|
		if not result.include?(element)
			result.push(element)
		end
	end
	return result
end

p uniques([1, 5, "frog", 2, 1, 3,"frog"])
# => [1,5,”frog”,2,3]