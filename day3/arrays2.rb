numbers = [ ]

for number in 1..5 
	numbers.push(number)
	puts  "Adding #{number} to the list."
end

numbers.each { |number| puts "Number was: #{number}."}