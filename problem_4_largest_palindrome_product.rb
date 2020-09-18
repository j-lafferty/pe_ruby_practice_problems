# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome_product(num1, num2)
  palindrome = []

  [*num1..num2].combination(2).to_a.select do |pair|
    product = pair.inject(:*)
    palindrome << product if product == product.to_s.reverse.to_i
  end

  palindrome.uniq.max
end

p largest_palindrome_product(100, 999) == 906609
