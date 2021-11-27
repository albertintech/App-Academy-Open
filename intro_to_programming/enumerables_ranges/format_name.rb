# Format Name
# Write a method format_name that takes in a name string and returns the name properly capitalized.

# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"
# Nice "hint" lulz

def format_name(str)
  arr = str.split(" ")
  formatted_name = ""

  arr.each { |part| formatted_name << part.capitalize + " " }

  formatted_name
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
