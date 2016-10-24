# problem 4: combinations

# Write a method combinations which takes two arrays of strings
# and returns an array with all of the combinations of the items
# in them, listing the first items first.

def combinations(array1, array2)
  result = []
  array1.each do |word1|
    array2.each do |word2|
      result.push("#{word1}#{word2}")
    end
  end
  return result
end

p combinations(["on","in"],["to","rope"])
# => [“onto”,”onrope”,”into”,”inrope”]