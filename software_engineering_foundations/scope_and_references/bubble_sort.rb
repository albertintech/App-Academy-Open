# array = ["a", "b", "c", "d"]  # let's swap "a" and "b"
# p array                       # initial array
# puts "We wish to swap the first and second elements in the array."
# puts "We will need a temporary variable to accomplish the swap."
# temp = array[0];              # save a copy of the first ele
# array[0] = array[1];          # overwrite the first ele with the second ele
# array[1] = temp;              # overwrite the second ele with the first ele copy
# p array                       # => ["b", "a", "c", "d"]
#
# puts "Let's reset the array back to its original form:"
# array = ["a", "b", "c", "d"]  # let's swap "a" and "b"
# p array
# puts "Let's try again without using a temporary variable."
# puts "This is called 'Parallel Assignment in Ruby:'"
# puts "array[0], array[1] = array[1], array[0]"
# array[0], array[1] = array[1], array[0]
# p array                       # => ["b", "a", "c", "d"]

# def bubble_sort(array)
#     sorted = false
#     while !sorted
#         sorted = true
#
#         (0...array.length - 1).each do |i|
#             if array[i] > array[i + 1]
#                 array[i], array[i + 1] = array[i + 1], array[i]
#                 sorted = false
#             end
#         end
#     end
#
#     array
# end
#
# array = ["d", "a", "c", "b"]
# print bubble_sort(array)
# puts

arr = [2, 8, 5, 2, 6]

def bubble_sort(arr)
print "This is the original array: #{arr}"
puts

  sorted = false
  while !sorted
    sorted = true
    (0...arr.length - 1).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
  end
  arr
end

p bubble_sort(arr) # first pass: => [2,5,2,6,8]
