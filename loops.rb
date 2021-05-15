#Loops

#Example of repeated actions
def sayhi()
	puts "Hi"
	puts "Hi"
	puts "Hi"
	puts "Hi"
	puts "Hi"
end

sayhi()

#puts "Hi" 5 times. Not very 'elegent' as the CS kids say

#A better aproach to repeated action: the mighty loop!

def sayHowdy()

counter = 1
while counter <= 5
	puts "Howdy"
	counter += 1
	end
end

sayHowdy()