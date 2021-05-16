# Write a method called "count_a(word)" that takes in a string word and returns the number of a's in the word.
# The method should count both lowercase (a) and uppercase (A)

# given "Aardvark" the result should be '3'

def count_a(word)
	count = 0
	i = 0

	while i < word.length
		char = word[i]

		if char == 'A' || char == 'a'
			count +=1
		end

	i += 1	
	end
return count
end

puts count_a("Aardvark") # => 3
puts count_a("Albert") # => 1
puts count_a("Amanda") # => 3
puts count_a("Tom") # => 0