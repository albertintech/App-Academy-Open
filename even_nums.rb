# Even Nums
# Write a method even_nums(max) that takes in a number max and returns an array containing all even numbers from 0 to max


def even_nums(max)
  even_arr = []
  count = 0
  while count <= max do
    even_arr << count if count % 2 == 00
    count += 1
  end
  even_arr
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]
puts
