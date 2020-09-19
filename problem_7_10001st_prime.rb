# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def is_prime(n)
  return n == 2 if n % 2 == 0
  return n == 3 if n % 3 == 0
  return n == 5 if n % 5 == 0

  step, m = 4, Math.sqrt(n) + 1
  counter = 5

  # numbers divisible by neither 2 nor 3
  # are precisely the numbers of the form 6*k ± 1
  while counter < m
    return false if n % counter == 0
    step = 6 - step # step alternates between 2 and 4
    counter += step
  end

  true
end

def nth_prime(n)
  candidate = 2
  counter = 0

  while counter < n
    counter += 1 if is_prime(candidate)
    candidate += 1
  end

  candidate - 1
end

p nth_prime(6) == 13
p nth_prime(168) == 997
p nth_prime(351) == 2371
p nth_prime(1000) == 7919
p nth_prime(10001) == 104743