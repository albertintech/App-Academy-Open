# First Half
# Write a method first_half(array) that takes in an array and returns a new array containing the first half of the elements in the array. If there is an odd number of elements, return the first half including the middle element.

def first_half(array)
  # My solution

  # first_half_array = []
  # size = array.length
  # even_arr = 0
  # odd_arr = 0
  #
  # if size % 2 == 0
  #   even_arr = size / 2
  # else
  #   odd_arr = (size/2) + 1
  # end
  #
  # if even_arr != 0
  #   first_half_array = array.first(even_arr)
  # else
  #   first_half_array = array.first(odd_arr)
  # end

  ## AA Solution ##

  new_array = []
  i = 0

  while i < (array.size / 2.0)
    item = array[i]
    new_array << item
    i += 1
  end
  new_array
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]
puts
