price = 4.99

def get_name
	print "What's your name?"
	gets.chomp
end

name = get_name

def pizza_count
	print "How many pizzas do you want to order?"
	gets.to_i
end

count = pizza_count

def total_amount(price,count)
	price * count
end

puts "Hello #{name}, welcome!\nYour #{count} pizzas will cost you #{total_amount(price,count)} euro."