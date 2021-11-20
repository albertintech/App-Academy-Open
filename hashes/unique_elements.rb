# Unique Elements
# Write a method unique_elements that takes in an array and returns a new array where all duplicate elements are removed. Solve this using a hash.

# Hint: all keys of a hash are automatically unique

# The most Ruby way ignoring the "must use a hash" requirement
# def unique_elements(arr)
#   hsh.uniq
# end

# Ok. Now with the hash requirement
def unique_elements(arr)
  hsh = Hash.new(0)
  arr.each { |ele| hsh[ele] = true }
  return hsh.keys
end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts
