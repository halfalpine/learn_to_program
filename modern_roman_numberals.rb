def old_roman_numeral num 
	roman = ''
	roman = roman + 'M' * (num / 1000)
	roman = roman + 'D' * (num % 1000 / 500)
	roman = roman + 'C' * (num % 500 / 100)
	roman = roman + 'L' * (num % 100 / 50)
	roman = roman + 'X' * (num % 50 / 10)
	roman = roman + 'V' * (num % 10 / 5)
	roman = roman + 'I' * (num % 5)
	roman
end

puts(old_roman_numeral(1999))


#option 1: create a "code table" for integers #1-9
#option 2: use if/then statements at each level to determine whether letters go before of after
#option 3: use an .each method combined with an array or hash

numeral_key = [['X', 10], ['V', 5], ['I', 1]]
for each