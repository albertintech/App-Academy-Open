# Write a method reverse(word) that takes in a string word
# and returns the word with its letters in reverse order.

def reverse(word)
	reversed = ""

	i = 0
	while i < word.length
		char = word[i]
		reversed = char + reversed
    # puts reversed

		i += 1
	end

	return reversed
end

puts reverse("racecar")  # => racecar
puts reverse("kayak")    # => kayak
puts reverse("bootcamp") # => pmactoob
