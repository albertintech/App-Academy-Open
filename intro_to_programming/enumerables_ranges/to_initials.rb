# To Initials
# Write a method to_initials that takes in a person's name string and returns a string representing their initials.

def to_initials(name)
  arr = name.split(" ")
  abb = ""
  i = 0

  while i < arr.length
    abb << arr[i][0]
    i += 1
  end

  abb
end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"

# AAOpen Solution

def to_initials(name)
  parts = name.split(" ")
  initials = ""
  parts.each { |part| initials += part[0] }
  return initials
end
