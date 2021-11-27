# Anagrams
# Write a method anagrams? that takes in two words and returns a boolean indicating whether or not the words are anagrams. Anagrams are words that contain the same characters but not necessarily in the same order. Solve this without using .sort

def anagrams?(word1, word2)
  if word1 == word2
    return false
  elsif word1.length != word2.length
    return false
  elsif (word1.split("") - word2.split("")) == []
    return true
  else
    return false
  end
end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false

# Input: two arguments each a string
# Output: Boolean true or false
#
# Req: Compare strings and return t/f result if anagrams of each other
#
# algo:
# -accept two strings
# -compare length, if equal continue, if not return false
# -compare words, if not same continue, if same return false
# -compare chars, if chars are equal in number, return true, else return false
