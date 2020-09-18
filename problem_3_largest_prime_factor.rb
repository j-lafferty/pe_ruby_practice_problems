# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def largest_prime_factor(num)
  factors = []
  d = 2

  while num > 1
    while num % d == 0
      factors << d
      num /= d
    end
    d += 1
  end

  factors[-1]
end

puts largest_prime_factor(600851475143) == 6857
