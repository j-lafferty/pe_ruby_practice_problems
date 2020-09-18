# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def smallest_multiple(max_num)
  (1..max_num).reduce(:lcm)
end

p smallest_multiple(10) == 2520
p smallest_multiple(20) == 232792560
