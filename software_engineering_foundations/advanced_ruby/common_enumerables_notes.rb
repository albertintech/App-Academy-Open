# all? "All eveluate to true?"
# Return true when all elements result in true when passed into the block.
p [2, 4, 6].all? { |ele| ele.even? }
p %w(ho ho ho).all? { |ele| ele.length == 2 }

# any? "At least one evaluates to true?"
# Return true when all at least one element results in true when passed into the block.
p [3, 4, 7].any? { |el| el.even? }
p [3, 5, 7].any? { |el| el.even? }

# none? "Not even one is true? OR All false?"
# Return true when no elements result in true when passed into the block.
p [1, 3, 5].none? { |el| el.even? } # => true; not one even value
p [1, 4, 5].none? { |el| el.even? } # => false; at least one even value

# one? "Only one is true?"
# Return true when exactly one element results in true when passed into the block.
p [1, 4, 5].one? { |el| el.even? }  # => true since the only one even value
p [1, 4, 6].one? { |el| el.even? }  # => false; more than one even value
p [1, 3, 5].one? { |el| el.even? }  # => false; no even values at all

# count
# Return a number representing the count of elements that result in true when passed into the block.
p [1, 2, 3, 4, 5, 6].count { |el| el.even? }    # => 3
p [1, 3, 5].count { |el| el.even? }             # => 0

# sum
# Return the total sum of all elements
p [1, -3, 5].sum   # => 3
