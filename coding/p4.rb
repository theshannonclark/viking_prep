# problem 4: Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrome?(integer)
  return integer.to_s.reverse.to_i == integer
end

def largest_palindromic_product(num_digits)
  upper = ("9" * num_digits).to_i
  lower = "1#{'0' * (num_digits - 1)}".to_i

  upper.downto(lower).each do |i|
    upper.downto(lower).each do |j|
      if is_palindrome?(i * j)
        return {i: i, j: j, product: i * j}
      end
    end
  end
end

largest = largest_palindromic_product(3)

puts "#{largest[:i]} * #{largest[:j]} = #{largest[:product]}"