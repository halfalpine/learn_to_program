=begin Y
our goal: return a perfectly shuffled array.

Question: How can you make sure you are getting a perfect shuffle?
	use the random number generator
Question: What would you even say a pefect shuffle would be?
	generate a random number for each iteration of the method
Question: Now test for it
	redundant: trust the language to generate a true random number
=end

test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def shuffle some_array
	puts "method 1 ok"
	recursive_shuffle some_array, []
end

def recursive_shuffle unshuffled, shuffled
	puts "method 2 initialized"
	still_unshuffled = []
	dumb_variable = unshuffled.length
	randomizer = rand(dumb_variable)
	puts dumb_variable
	if unshuffled.length <= 0
		return shuffled
	end
	(0...dumb_variable).each do |i|
		#neither of these array items are getting pushed
		if i == randomizer
			shuffled << unshuffled.at(i)
		else
			still_unshuffled << unshuffled.at(i)
		end
	end
	recursive_shuffle still_unshuffled, shuffled
end

shuffle test_array