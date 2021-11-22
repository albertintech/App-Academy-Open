# Greatest Factor Array

# Write a method greatest_factor_array that takes in an array of numbers and returns a new array where every even number is replaced with it's greatest factor. A greatest factor is the largest number that divides another with no remainder. For example the greatest factor of 16 is 8. (For the purpose of this problem we won't say the greatest factor of 16 is 16, because that would be too easy, ha)

def greatest_factor_array(arr)
  last_arr = []
  last_arr = consume_arr(arr)
  last_arr.map { |sub_arr| sub_arr.max(1) }
end

def factors(num)
factors = []
if num % 2 == 0
   (1...num).each do |divisor|
     if num % divisor == 0
       factors << divisor unless divisor == 16
     end
   end
 else
   factors << num
 end
 return factors
end

def consume_arr(arr)
  new_arr = []
  arr.each do |num|
    new_arr << factors(num)
  end
  return new_arr
end

print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts

# R and U:
#
# Write a method
# Input: array or ints
# Output: new array
#
# Reqs: New array of numbers replaces every even number with its greatest factor
#   -Note: Greatest factor is the largest number that divides another number with no remainder. Do not include the number itself as the greatest factor.
