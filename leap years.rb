puts "Enter a starting year"
starting_year = gets.to_i
puts "Enter an ending year"
ending_year = gets.to_i
puts ""
puts "These are the leap years"
while starting_year <= ending_year
	if starting_year % 4 == 0 && starting_year % 400 == 0
		puts starting_year.to_s
		starting_year += 4
	elsif starting_year % 4 == 0 && starting_year % 100 != 0
		puts starting_year.to_s
		starting_year += 4
	else
		starting_year += 1
	end
end
