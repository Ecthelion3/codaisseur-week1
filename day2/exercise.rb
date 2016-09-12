def get_name
	print "What's your name? "
	gets.chomp.capitalize
end

def get_age
	print "How old are you? "
	gets.to_i
end

def get_gender
	print "What's your gender (m/f)?"
	gender = gets.chomp
	if gender == "m" 
		"Mr."
	elsif gender == "f" 
		"Ms."
	end
end

def calc_year(age)
	2116 - age 
end

name = get_name
unless name == ""
	age = get_age
	if age >= 0
		title = get_gender
		if title == "Mr." || title == "Ms."
			puts "Good morning #{title} #{name}."
			puts "You will be 100 in the year #{calc_year(age)}"
		else
			print "You have not entered a valid gender.\n\n"
		end	
	else
		puts "You haven't entered a valid age.\n\n"
	end
else
	puts "You have entered no name.\n\n"
end