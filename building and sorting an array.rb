puts "Enter as many words as you like:"
all_the_words = []
new_word = gets.chomp
while new_word.length > 0
	all_the_words.push(new_word)
	new_word = gets.chomp
end
all_the_words.sort.each do |word|
	puts word
end

