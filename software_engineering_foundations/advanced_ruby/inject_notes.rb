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
# arr = [11, 7, 2, 4]
#
# def find_min(arr)
#   arr.inject do |acc, el|
#       if el < acc
#           el
#       else
#           acc
#       end
#     end
# end # => 2
#
# puts find_min(arr)

# Inject with a default accumulator
# In the last examples we described how the first element of the array will become the initial accumulator and the first iteration technically grabs the second element. We can also use inject by passing in our own initial accumulator. In this scenario, the acc will be our own value and the first el will be the first element of the array.

# Here's an inject that sums up all even numbers of an array:
result = [11, 7, 2, 4].inject(100) do |acc, el|
    if el.even?
        acc + el
    else
        acc
    end
end # => 6

p result
