# Two Dimensional Sum
# Write a method two_d_Sum that takes in a two dimensional array and returns the sum of all elements in the array.

# Rubyist solution
# def two_d_sum(arr)
#   arr.flatten.sum
# end

#Long way around with .each to access sub arrays then number elements
def two_d_sum(arr)
  sum = 0
  arr.each do |sub_arr|
    sub_arr.each do |num|
      sum += num
    end
  end
  sum
end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15

# Input:
# -2D array of numbers
# Output:
# -Single integer number
# Requirements:
# -Add all elements and return sum

# def two_d_sum(arr)
#   sum = 0
#   arr.each_with_index do |num1, idx1|
#     arr.each_with_index do |num2, idx2|
#       if idx2 > idx1
#         sum += num1 + num2
#       end
#     end
#   end
#   sum
# end
