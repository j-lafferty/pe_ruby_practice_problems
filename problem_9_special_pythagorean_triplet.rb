# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a2 + b2 = c2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pythagorean_triplets
  (1..Float::INFINITY).lazy.flat_map { |z| 
    (1..z).flat_map { |x|
      (x..z).select { |y|
        x**2 + y**2 == z**2
      }.map { |y|
        [x, y, z] 
      }
    }
  }
end

def take_pythagorean_triplets(sum)
  pythagorean_triplets.take_while { |*, z| z < sum / 2 }
                      .force
                      .select { |i| i.sum == sum }
                      .flatten
end

def pythagorean_triplets_product(sum)
  take_pythagorean_triplets(sum).inject(:*)
end

# p pythagorean_triplets_product(12) == 60 # a = 3, b = 4, c = 5
# p pythagorean_triplets_product(30) == 780 # a = 5, b = 12, c = 13
p pythagorean_triplets_product(1000) == 31875000 # a = 200, b = 375, c = 425