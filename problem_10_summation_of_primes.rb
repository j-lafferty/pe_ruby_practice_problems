# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

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


def sum_of_primes(limit)
  primes = [2]
  p_contender = 3
  counter = 0

  while primes[-1] < limit
    primes << p_contender if is_prime(p_contender)
    p_contender += 1
  end

  primes.pop
  primes.sum
end

# p sum_of_primes(10) == 17
p sum_of_primes(2_000_000) == 142913828922
