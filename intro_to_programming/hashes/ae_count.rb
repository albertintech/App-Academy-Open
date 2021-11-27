# Ae Count
# Write a method ae_count that takes in a string and returns a hash containing the number of a's and e's in the string. Assume the string contains only lowercase characters.

# My initial solution:
def ae_count(str)
  arr = str.chars
  a = 0
  e = 0
  arr.each do |l|
    if l == 'a'
      a += 1
    end
    if l == 'e'
      e += 1
    end
  end
  return {"a" => a, "e" => e}
end

#AA Open Solution:
# def ae_count(str)
#   count = { "a" => 0, "e" => 0 }
#
#   str.each_char do |char|
#     if (char == 'a' || char == 'e')
#       count[char] += 1
#     end
#   end
#
#   return count
# end

puts ae_count("everyone can program") #=> {"a"=>2, "e"=>3}
puts ae_count("keyboard") #=> {"a"=>1, "e"=>1}

# Input: string
# Output: hash
#
# Requirements:
# -Take in string
# -Return hash
#   -Count a's in string and return as value
#   -Count e's in string and return as value
# -Assume only lowercase input/output
