# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def nth_prime(num)
  prime_numbers = [2, 3]
  number = 5

  until prime_numbers.size == num
    (3...number).step(2) do |i|
      next if prime_numbers.include?(i) || i % 3 == 0

      if (1..i).select { |j| i % j == 0 } == [1, i]
        prime_numbers << i
      end
    end

    number += 1
  end

  prime_numbers[-1]
end

p nth_prime(6) == 13
p nth_prime(168) == 997
p nth_prime(351) == 2371
p nth_prime(1000) == 7919
p nth_prime(10001) == 104743