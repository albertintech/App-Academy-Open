# Fibonacci
# The fibonacci sequence is a sequence of numbers whose first and second elements are 1.
# To generate further elements of the sequence we take the sum of the previous two elements. For example the first 6 fibonacci numbers are 1, 1, 2, 3, 5, 8.
# Write a method fibonacci that takes in a number length and returns the fibonacci sequence up to the given length.

def fibonacci(length)
  arr = []
  if length == 0
    return arr
  elsif length == 1
    return arr << 1
  else
    arr = [1,1]
    while arr.length < length
      arr << arr[-2] + arr[-1]
    end
  end
  return arr
end

# def summation(num)
#   sum = 0
#   count = 0
#   while count <= num
#     sum += count
#     count += 1
#   end
#   return sum
# end

print fibonacci(0) # => []
puts
print fibonacci(1) # => [1]
puts
print fibonacci(6) # => [1, 1, 2, 3, 5, 8]
puts
print fibonacci(8) # => [1, 1, 2, 3, 5, 8, 13, 21]
puts
