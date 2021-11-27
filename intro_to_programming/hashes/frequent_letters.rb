# Frequent Letters
# Write a method frequent_letters that takes in a string and returns an array containing the characters that appeared more than twice in the string.

def frequent_letters(string)
  count = Hash.new(0)
  string.each_char { |char| count[char] += 1 }

  return_arr = []
  count.each do |k,v|
    if v > 2
      return_arr << k
    end
  end
  return_arr
end

print frequent_letters('mississippi') #=> ["i", "s"]
puts
print frequent_letters('bootcamp') #=> []
puts

# input: string
# output: array
# Reqs: display chars that appear more than 2x
#
# algo:
# - count each char
# - hold count?
# - filter count for values > 2



# for some reason, I got sidetracked into returning a hash...
# def frequent_letters(string)
#   arr = Array.new
#   arr = string.split("")
#
#   count_hash = Hash.new(0)
#   arr.each { |ele| count_hash[ele] += 1 }
#   count_hash
#
#   count_hash.select { |k,v| v > 2 }
# end
