# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is,
# 3025 - 385 = 2640

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_difference(num)
  arr = [*1..num]
  sum_square = arr.sum**2
  square_sum = arr.inject { |sum, n| sum += n**2 }
  sum_square - square_sum
end

p sum_square_difference(10) == 2640
p sum_square_difference(100) == 25164150