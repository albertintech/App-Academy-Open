# Hand Score
# Write a method hand_score that takes in a string representing a hand of cards and returns it's total score. You can assume the letters in the string are only A, K, Q, J. A is worth 4 points, K is 3 points, Q is 2 points, and J is 1 point. The letters of the input string not necessarily uppercase.

# Without a hash
def hand_score(hand)
  arr = hand.downcase.chars
  score = 0
  arr.each do |card|
    case card
    when 'a'
      score += 4
    when 'k'
      score += 3
    when 'q'
      score += 2
    when 'j'
      score += 1
    else
      score += 0
    end
  end
    score
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9

# AA Open solution
def hand_score(hand)
  points = {
    "A"=>4,
    "K"=>3,
    "Q"=>2,
    "J"=>1
  }

  score = 0
  hand.each_char { |char| score += points[char.upcase] }
  return score
end
