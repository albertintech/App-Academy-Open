# Write a method factorial(num) that takes in a number num
# and returns the product of all numbers from 1 up to and including num.

def factorial(num)
product = 1
i = 1 

	while i <= num
		product *= i

		i += 1
	end

return product
end

puts factorial(3)
puts factorial(5)