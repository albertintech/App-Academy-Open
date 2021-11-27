# Caesar Cipher
# Write a method caesar_cipher that takes in a string and a number. The method should return a new string where every character of the original is shifted num characters in the alphabet.

# Feel free to use this variable:
# alphabet = "abcdefghijklmnopqrstuvwxyz"

def caesar_cipher(str, increment)
  alphabet = "abcdefghijklmnopqrstuvwxyz" # index numbers 0-25
  new_str = ""

  str.each_char do |char| # iterate through each char in string
    old_index = alphabet.index(char) # return the index of each char
    new_index = old_index + increment # add increment value to each index
    new_char = alphabet[new_index % 26] # use new index value mod 26 to find corresponding new char. Mod 26 allows us to "loop back" if new index goes over 25
    new_str += new_char # concat new chars into new string
  end
  return new_str
end

puts caesar_cipher("apple", 1)    #=> "bqqmf"
puts caesar_cipher("bootcamp", 2) #=> "dqqvecor"
puts caesar_cipher("zebra", 4)    #=> "difve"
