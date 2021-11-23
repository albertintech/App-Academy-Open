# Perfect Square
# Write a method perfect_square? that takes in a number and returns a boolean indicating whether it is a perfect square. A perfect square is a number that results from multiplying a number by itself. For example, 9 is a perfect square because 3  3 = 9, 25 is a perfect square because 5  5 = 25.

def perfect_square?(num)
  (1..num).each do |i|
    if i * i == num
      return true
    end
  end

  return false
end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true

#Restate
# -write method called perfect_square?
#  -so predicate method that will return either true or false
# -input an integer
# -output boolean (true or false)
# -result is we know if input number is a perfect square
# -a perfect square is a number that results from a single number multiplied by itself, e.g. 25 is a perfect square becuase 5 x 5 = 25
