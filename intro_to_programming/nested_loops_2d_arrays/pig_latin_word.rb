# Pig Latin Word
# Write a method pig_latin_word that takes in a word string and translates the word into pig latin.

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

# def start_with_vowel(word)
#   case word[0]
#   when "a"
#     word + "yay"
#   when "e"
#     word + "yay"
#   when "i"
#     word + "yay"
#   when "o"
#     word + "yay"
#   when "u"
#     word + "yay"
#   else
#     false
#   end
# end

# First complete solution without re-factoring
def pig_latin_word(word)
  if word[0].match?(/[aeiou]/)
    start_with_vowel(word)
  else
    start_with_consonant(word)
  end
end

def start_with_vowel(word)
  if word[0].match?(/[aeiou]/)
    return word + "yay"
  else
    return false
  end
end

def start_with_consonant(word)
  first_consonants = ""
  first_consonants << word.partition(/[aeiou]/)[0]
  word.delete_prefix(first_consonants) + first_consonants + 'ay'
end

puts start_with_vowel("apple")   # => "appleyay"
puts start_with_vowel("eat")     # => "eatyay"
puts start_with_consonant("banana")  # => "ananabay"
puts start_with_consonant("trash")   # => "ashtray"

# Input: String
# Output: Modified string
#
# Requirements:
# -if word starts with vowel => add 'yay' to the end of the word
# -For nonvowel starts, move all consonants prior to first vowel to the end of the word and add 'ay'

# AA Open Solution
# def pig_latin_word(word)
#   vowels = "aeiou"
#
#   if vowels.include?(word[0])
#      return word + "yay"
#   end
#
#   word.each_char.with_index do |char, i|
#     if vowels.include?(char)
#       return word[i..-1] + word[0...i] + "ay"
#     end
#   end
# end
