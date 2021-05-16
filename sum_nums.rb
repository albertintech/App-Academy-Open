# Write a method sum_nums(max) that takes in a number max
# and returns the sum of all numbers from 1 up to and including max.

def sum_nums(max)
total = 0
i = 1 #loop from 1 to some number n

	while i <= max
		total += i

		i += 1
	end

return total
end

puts sum_nums(2)
puts sum_nums(10)