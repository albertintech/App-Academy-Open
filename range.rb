# Range
# Write a method range(min, max) that takes in two numbers min and max. The method should return an array containing all numbers from min to max inclusive.

def range(min, max)
  arr = []
  count = min
  while count <= max do
    arr << count
    count += 1
  end
  arr
end

print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]
puts
