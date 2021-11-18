# Is Valid Name
# Write a method is_valid_name that takes in a string and returns a boolean indicating whether or not it is a valid name.

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
  parts = str.split(" ")
  if parts.length < 2
    return false
  end

  parts.each do |part|
    if !is_capitalized(part)
      return false
    end
  end
  return true
end

def is_capitalized(word)
  if (word[0] == word[0].upcase) && (word[1..-1] == word[1..-1].downcase)
    true
  else
    false
  end
end

# AAOpen Solution
# def is_valid_name(str)
#   parts = str.split(" ")
#   if parts.length < 2
#     return false
#   end
#
#   parts.each do |part|
#     if !is_capitalized(part)
#       return false
#     end
#   end
#
#   return true
# end
#
# def is_capitalized(word)
#   if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
#     return true
#   else
#     return false
#   end
# end
puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false

# I/O:
#   -Input: String
#   -Output: Boolean
# Requirements:
#   -Must have first and last name
#   -May include suffixes like Jr. or Sr.
#   -Each part of name must be capitalized
# Algo:
# -Accept string
# -Convert to array
# -Test for at least two parts to name => DONE
# -Test each name part for initial capitalization only
