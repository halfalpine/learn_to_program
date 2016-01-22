puts "Welcome to Deaf Grandma"
puts ""
request = 0
bye_count = 0
while bye_count < 3
	year = rand(21) + 1930
	puts "What would you like to say to Grandma?"
	request = gets.chomp
	if request != request.upcase
		puts "HUH?! SPEAK UP, SONNY!"
		bye_count = 0
	elsif request == "BYE"
		bye_count = bye_count + 1
		if bye_count == 3
			puts "BYE!"
		end
	else
		puts "NO, NOT SINCE " + year.to_s
		bye_count = 0
	end
end