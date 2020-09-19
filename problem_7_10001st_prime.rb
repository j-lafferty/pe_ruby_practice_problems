# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

require 'prime'

def nth_prime(n)
  candidate = 2
  counter = 0

  while counter < n
    counter += 1 if candidate.prime?
    candidate += 1
  end
  candidate - 1
end

p nth_prime(6) == 13
p nth_prime(168) == 997
p nth_prime(351) == 2371
p nth_prime(1000) == 7919
p nth_prime(10001) == 104743