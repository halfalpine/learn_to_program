the_array_in_question = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"

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

=begin
how do we stop the loop (how do we get to return?)

find the smallest word, using '<'
	pass the word to each item in the array
		if var = true 
			add the item to the sorted array 
		else 
			pass the next word to each item in the array 
=end

def sort some_array
	some_array = some_array.downcase.split
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	number_to_sort = unsorted_array.length
	smallest_word_yet = unsorted_array[0]
	counter = 1
	temporary_holding_array = []

=begin 
puts number_to_sort
puts smallest_word_yet
puts counter
puts unsorted_array[counter]
puts "TEST"
if smallest_word_yet < unsorted_array[counter]
puts smallest_word_yet * 3
else
	puts unsorted_array[counter] * 3
end
end
=end

	while counter < number_to_sort
		messy_array_item_variable = unsorted_array[counter]
		if smallest_word_yet < messy_array_item_variable
			temporary_holding_array.push(messy_array_item_variable)
			counter +=1
		else
			temporary_holding_array.push(smallest_word_yet)
			smallest_word_yet = messy_array_item_variable
			counter += 1
		end
	end
	sorted_array.push(smallest_word_yet)
	unsorted_array = temporary_holding_array
	recursive_sort(unsorted_array, sorted_array)
end

sort the_array_in_question	






def sort arr
	rec_sort arr, []
end

def rec_sort unsorted, sorted_array
	if unsorted.length <= 0
		return sorted
	end
	smallest = unsorted.pop
	still_unsorted = []
	unsorted.each do |tested_object|
		if tested_object < smallest
			still_unsorted.push smallest
			smallest = tested_object
		else
			still_unsorted.push tested_object
		end
	end
	sorted.push smallest
	rec_sort still_unsorted, sorted
end


def sort arr
	return arr if arr.length <= 1
	middle = arr.pop
	less =  arr.select{|x| x < middle}
	more = arr.select{|x| x >= middle}
	sort(less) + [middle] + sort(more)
end











