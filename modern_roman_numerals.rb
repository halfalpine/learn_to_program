# Strategy 1: Create a different method for each digit, perhaps grouping all in a module
# Strategy 2: Store the digits in an array and use a 'do' loop to cycle through them
# Strategy 3: Use if/else statements to do the math


def fives input
	@numeral_in_progress = ''
	if input >= 5
		@numeral_in_progress = (numeral_in_progress % 5) + 'V' 
		@input = input - 5
	end
end

def ones @input, @numeral_in_progress
	if input >= 3
		@numeral_in_progress = 'I' + numeral_in_progress
	end
	else
		@numeral_in_progress = numeral_in_progress + 
end


puts 9.fives.ones.display









def all_the_numerals input
	if input > 89
		numeral_in_progress = 'XC'
	elsif 90 > input > 49
		numeral_in_progress = 'L'
	else 
		numeral_in_progress = '' 
	end
	if (input % 50 / 10) > 3
		numeral_in_progress = 'X' + numeral_in_progress
	else
		numeral_in_progress = numeral_in_progress + 'X' * (input % 50 / 10)
	if (input % 10) > 8
		numeral_in_progress = numeral_in_progress + 'V'
	elsif (input % 10 / 5) > 1
		numeral_in_progress = 
			
end

puts 16.all_the_numerals



