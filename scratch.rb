# str = "follow the yellow brick road"
#
# chars = str.split("")
# p chars
#
# arr = %w(Hello world how are you)
#
# p arr
#
# p arr.join(" ") + "?"
#
# stringy = "Would you likes to rides the shoopuff?"
# print stringy.split("s").join("z")

############### Nested Loops #################

# (1..3).each do |num1|
#   puts num1
#   (1..5).each do |num2|
#     puts "      " + num2.to_s
#   end
# end

# arr = %w(a b c d)
#
# # iteration through all possible combinations w/ duplicates
# arr.each do |ele1|
#   arr.each do |ele2|
#     puts ele1 + ele2
#   end
# end

arr = %w(a b c d)

arr.each_with_index do |ele1, idx1|
  arr.each_with_index do |ele2, idx2|
    if idx2 > idx1
      puts ele1 + ele2
    end
  end
end
