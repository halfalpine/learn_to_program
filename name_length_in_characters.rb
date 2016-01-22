puts 'What is your full name?'
full_name = gets.chomp.split(' ')
just_letters = full_name[0].length + full_name[1].length + full_name[2].length
puts just_letters