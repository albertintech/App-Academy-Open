# All Else Equal
# Write a method all_else_equal that takes in an array of numbers. The method should return the element of the array that is equal to half of the sum of all elements of the array. If there is no such element, the method should return nil.

def all_else_equal(arr)
quotient = (arr.sum) / 2
  if arr.include?(quotient)
    return quotient
  else
    return nil
  end
end

p all_else_equal([2, 4, 3, 10, 1]) #=> 10, because the sum of all elements is 20
p all_else_equal([6, 3, 5, -9, 1]) #=> 3, because the sum of all elements is 6
p all_else_equal([1, 2, 3, 4])     #=> nil, because the sum of all elements is 10 and there is no 5 in the array


# input: array of numbers
# output: integer or nil
#
# requirements: the return integer should equal half of the sum of all elements; if not return nil
#
# DST: arrays, ints, nil
#
# algo:
# -accept array
# -sum array elements
# -divide sum by 2
# -find quotient in given array
# -return quotient if found
# -else return nil

# arr = [1, 2, 3, 4]
# sum = 0
# def all_else_equal(arr) # input: [1, 2, 3, 4]
#   quotient = (arr.sum) / 2
#   if arr.include?(quotient)
#     return quotient
#   else
#     return nil
#   end
#
# end
#
# p all_else_equal(arr)
