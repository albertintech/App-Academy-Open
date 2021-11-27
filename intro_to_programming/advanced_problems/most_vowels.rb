# Most Vowels
# Write a method most_vowels that takes in a sentence string and returns the word of the sentence that contains the most vowels.

def most_vowels(sentence)
  arr = sentence.split

  hsh = {}
  arr.each { |word| hsh[word] = vowel_count(word) }
  sorted = hsh.sort_by { |k, v| v }
  return sorted.last[0]
end

def vowel_count(word)
  word.count "aeiou"
end


p most_vowels("what an amazingo wonderful life") #=> "wonderful"

# input: sentence string
# output: single word string
# reqs: returned word string has the most vowels
#
# Algo:
# -Separate each word
# -Each word goes into array
# -Iterate through array
# -Count vowels in each word, return integer
# -Select word with highest vowel count
# -Return word string with most vowels
