# Element Count
# Write a method element_count that takes in an array and returns a hash representing the count of each element in the array.

def element_count(arr)
      hsh = {}
      hsh.default = 0

      arr.each do |ele|
        hsh[ele] += 1
      end
      hsh
end

# Refactored
# def element_count(arr)
#   hsh = Hash.new(0)
#   arr.each { |ele| hsh[ele] += 1 }
# end

puts element_count(["a", "b", "a", "a", "b"])
  #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"])
  #=> {"red"=>2, "blue"=>1, "green"=>1}

# input: array of strings
# output: hash of string keys with integer values
# Requirements:
# -Track each element in the array with a count
# -Key: element
# -Value: number of times element appears
