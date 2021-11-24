# Vowel Cipher
# Write a method vowel_cipher that takes in a string and returns a new string where every vowel becomes the next vowel in the alphabet.

def vowel_cipher(string)
 vowels = "aeiou"

  new_arr = string.split("").map do |char|
    # string.split("") => ["b", "o", "o", "t", "c", "a", "m", "p"]
    # call map to iterate thorugh each letter
    # recognize each vowel, sub new vowel
    # fill new array with rebuilt string
  if vowels.include?(char) # True or false: are the vowels "aeiou" included in  the single char? This will skip consonants
    old_index = vowels.index(char) # what is the index of the char in vowels?
    # String#index method returns an int of the given argument 'char'
    new_index = old_index + 1 # Adds 1 to get next vowel index
    vowels[new_index % vowels.length] # Return the new vowel by using the new_index and making sure to wrap with '% vowels.legth'
  else
    char # if the char is a consonant, just return the consonant
  end
end
  # p new_arr
  return new_arr.join("") # Since value is still an array, use join to return a string
end

puts vowel_cipher("bootcamp") #=> buutcemp
puts vowel_cipher("paper cup") #=> pepir cap

# def vowel_cipher(string)
#   vowels = "aeiou"
#
#   new_chars = string.split("").map do |char|
#     if vowels.include?(char)
#       old_idx = vowels.index(char)
#       new_idx = old_idx + 1
#       vowels[new_idx % vowels.length]
#     else
#       char
#     end
#   end
#
#   return new_chars.join("")
# end
