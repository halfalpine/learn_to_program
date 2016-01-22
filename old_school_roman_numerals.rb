#def old_roman_numberals
	numeral = gets.to_i
	results = []
	if numeral > 9999
		return "This number is too big!"
	end
	while numeral >= 1000
		numeral = numeral - 1000
		results.push('M')
	end
	while numeral >= 500
		numeral = numeral - 500
		results.push('D')
	end
	while numeral >= 100
		numeral = numeral - 100
		results.push('C')
	end
	while numeral >= 50
		numeral = numeral - 50
		results.push('L')
	end
	while numeral >= 10
		numeral = numeral - 10
		results.push('X')
	end
	while numeral >= 5
		numeral = numeral - 5
		results.push('V')
	end
	while numeral >= 1
		numeral = numeral - 1
		results.push('I')
	end
	puts results.join
#end