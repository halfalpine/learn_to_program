line_width = 64
puts "Table of Contents".center(line_width)
puts ''
puts ''
puts "Chapter 1: Getting Started".ljust(line_width/2) + "page 1".rjust(line_width/2)
puts "Chapter 2: Numbers".ljust(line_width/2) + "page 9".rjust(line_width/2)
puts "Chapter 3: Letters".ljust(line_width/2) + "page 13".rjust(line_width/2)

puts ''

table_of_contents_array = [["Chapter 1: Getting Started", "page 1"], ["Chapter 2: Numbers", "page 9"], ["Chapter 3: Letters", "page 13"]]
table_of_contents_array.each do |chapter|
	puts chapter.first.ljust(line_width/2) + chapter.last.rjust(line_width/2)
end