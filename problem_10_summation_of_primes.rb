# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'

def sum_of_primes(limit)
  Prime.take_while { |i| i < limit }.sum
end

# p sum_of_primes(10) == 17
p sum_of_primes(2_000_000) == 142913828922
