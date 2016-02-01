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
	recursive_shuffle some_array, []
end

def recursive_shuffle unshuffled, shuffled
	if unshuffled.length <= 0
		return shuffled
	end
	still_unshuffled = []
	dumb_variable = unshuffled.length
	randomizer = rand(dumb_variable)
	(0...dumb_variable).each do |i|
		if randomizer == i
			item_moved = unshuffled.at(i) 
			shuffled.push item_moved
		else
			item_moved = unshuffled.at(i)
			still_unshuffled.push item_moved
		end
	end
	recursive_shuffle still_unshuffled, shuffled
end

puts shuffle test_array