def pizza_options
	pizzas = [
		{type: "Calzone", price: 5.49},
		{type: "Hawai", price: 4.99},
		{type: "Quatro Stagioni", price: 5.19},
		{type: "Asperge-beenham", price: 6.99}
	]
end

def print_pizzas
	puts
	puts "our menu".upcase
	puts "1. #{pizza_options[0][:type]}: #{pizza_options[0][:price]} Euro"
	puts "2. #{pizza_options[1][:type]}: #{pizza_options[1][:price]} Euro"
	puts "3. #{pizza_options[2][:type]}: #{pizza_options[2][:price]} Euro"
	puts "4. #{pizza_options[3][:type]}: #{pizza_options[3][:price]} Euro"
	puts
end

def get_name
	print "What's your name? "
	gets.chomp
end 

def get_pizza_nr
	print "Which pizza do you want to order? Number "
	gets.to_i
end

def get_pizza_name(a)
	pizza_options[a][:type]
end

def get_amount
	print "How many pizzas would you like? "
	gets.chomp
end

def get_price(a)
	pizza_options[a][:price]
end

def total_amount(a,b)
	total = a * b
	if total > 20
		total *= 0.9
	elsif total < 10
		total += 2.5
	end
	total
end

print_pizzas
name = get_name
if name == ""
	puts "You didn't enter a name.\n\n"
else
	pizza_nr = get_pizza_nr
	if pizza_nr < 1 || pizza_nr > 4
		pizza_nr -= 1
		puts "You chose a pizza that is not on our list.\n\n"
	else
		amount = get_amount
		unless !/\A\d+\z/.match(amount)
			amount = amount.to_i
			puts "\nYou ordered pizza #{get_pizza_name(pizza_nr)} #{amount} times."
			puts "Your order costs #{total_amount(amount,get_price(pizza_nr))} Euro."
			puts "Thank you for your order, #{name.capitalize}.\n\n"
		else
			puts "You didn't enter a valid amount.\n\n"
		end
	end
end
