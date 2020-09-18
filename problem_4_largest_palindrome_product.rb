# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

palindrome = []

[*100..999].combination(2).to_a.select do |pair| 
  palindrome << pair.inject(:*) if pair.inject(:*).to_s == pair.inject(:*).to_s.reverse
end

p palindrome.uniq.max
