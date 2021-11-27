#[11, 7, 2, 4].inject { |acc, el| acc + el } # => 24

# FIRST ITERATION:
# acc = 11
# el = 7
# new_acc = 18

# SECOND ITERATION:
# acc = 18
# el = 2
# new_acc = 20

# LAST ITERATION:
# acc = 20
# el = 4
# new_acc = 24

# Using inject to find the total product of an array:
# p [11, 7, 2, 4].inject { |acc, el| acc * el } # => 616

# Using inject to find the minimum value in an array:
arr = [11, 7, 2, 4]

def find_min(arr)
  arr.inject do |acc, el|
      if el < acc
          el
      else
          acc
      end
    end
end # => 2

puts find_min(arr)
