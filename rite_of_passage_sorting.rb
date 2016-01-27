the_array_in_question = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'.split(' ')

=begin 
goal: sort the array of words, using the '<' method

keep two lists
	1. already-sorted words
	2. still-unsorted words

-take the list of words
-finds the "smallest" word
-stick it at the end of the already-sorted list
-do it (find the "smallest word" again, but using the still-unsorted list instead of the original list)
=end 

def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	#Fabulous code
	array_count = 0
	least_value = unsorted_array[array_count]

	while array_count < unsorted_array.length
		if least_value < unsorted_array[array_count]
			new_array = new_array.push(unsorted_array[array_count])
			array_count += 1
		else 
			least_value = unsorted_array[array_count]
			array_count += 1
		end
	end

	unsorted_array = new_array
	sorted_array.push(least_value)
	recursive_sort (unsorted_array, sorted_array)
end

puts sort(the_array_in_question) 