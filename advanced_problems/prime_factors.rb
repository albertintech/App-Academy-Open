# Prime Factors
# Write a method prime_factors that takes in a number and returns an array containing all of the prime factors of the given number.

def prime_factors(num)
  factors(num).select { |factor| prime?(factor) }
end

def prime?(num)
  if num < 2
    return false
  end
  (2...num).each do |divisor|
    if num % divisor == 0
      return false
    end
  end
  return true
end

def factors(num)
factors = []
 (1..num).each do |divisor|
   if num % divisor == 0
     factors << divisor
   end
 end
 return factors
end


print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts
