#Iterate through a string and count the appearance of a particular letter

def count_e(word)

count = 0 # track count of the number of e's 

i = 0 # use i to iterate through 'word'

while i < word.length
	char = word[i]

	if char == "e"
		count += 1
	end

	i += 1
end

return count # the value I want back: the number of e's
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3