# Consonant Cancel

# Write a method consonant_cancel that takes in a sentence and returns a new sentence where every word begins with it's first vowel.

def consonant_cancel(sentence)
  arr = []
  arr = sentence.split
  parts = []
  parts = arr.map { |word| word.partition(/[aeiou]/) }
  new_arr = parts.each { |arr| arr.shift }
  next_arr = []
  next_arr = new_arr.map { |ele| ele.join }.join(" ")
end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"

# AA Open Solution
# def consonant_cancel(sentence)
#   words = sentence.split
#   new_words = words.map { |word| remove_first_consonant(word) }
#   return new_words.join(" ")
# end
#
# def remove_first_consonant(word)
#   vowels = "aeiou"
#   word.each_char.with_index do |char, i|
#     if vowels.include?(char)
#       return word[i..-1]
#     end
#   end
# end
