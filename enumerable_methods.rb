# Enumerable Methods
#     array
#       .each
#       .each_with_index
#     string
#       .each_char
#       .each_char.with_index

# months = %w(Jan Feb Mar Apr)
#
# months.each { |month| puts month}

# i = 0
# while i < months.length
#   month = months[i]
#   puts month
#
#   i += 1
# end

# sentence = "hello world"
#
# sentence.each_char { |char| print char, '.' }

# (1..10).each { |n| print n, ' ' }


# Fizz Buzz
# Write a method fizz_buzz(max) that takes in a number max and returns an array containing all numbers greater than 0 and less than max that are divisible by either 3 or 5, but not both.

def fizz_buzz(max)
  arr = []
  (1...max).each do |n|
    if n % 3 == 0 && n % 5 != 0
      arr << n
    end
    if n % 3 != 0 && n % 5 == 0
      arr << n
    end
  end
    arr
end

p fizz_buzz(20)
