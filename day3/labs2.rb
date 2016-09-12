# set helper functions
def print_divider
	puts "-" * 40
end

# empty shopping cart
@shopping_cart = []

#  products in store
@products = [
	{ article_nr: 1001, name: "race bike", price: 1249 },
	{ article_nr: 1002, name: "mountain bike", price: 999 },
	{ article_nr: 1003, name: "city bike", price: 549 },
	{ article_nr: 1004, name: "hybrid bike", price: 799 }
]

# show product list
def show_products
	puts "We sell the following bikes:"
	print_divider
	@products.each do |product|
		print product[:article_nr]
		print ": " + product[:name].capitalize
		puts " (#{product[:price]} EUR)"
	end
end

# select product by article_nr
def select_product
	puts "Give us the article number of the bike you want to buy."
	gets.chomp.to_i
end

# add to shopping_cart
def add_product(article_nr)
	product = get_product(article_nr)
	unless product == nil
		@shopping_cart << product
		puts "#{product[:name].capitalize} has been added to your shopping cart."
	end
end

def get_product(article_nr)
	@products.each do |product|
		if article_nr == product[:article_nr]
			return product
		end
	end
end

def show_cart
	print_divider
	puts "Your current shopping cart:"
	print_divider

	total_price = 0

	@shopping_cart.each do |product|
		print product[:article_nr]
		print ": " + product[:name].capitalize
		puts " (#{product[:price]} EUR)"
	
		total_price += product[:price]
	end

	puts "Total price: #{total_price} EUR"

	@shopping_cart
end

def ask_continue
	puts "Do you want to continue shopping?"
	answer = gets.chomp

	answer.upcase == "Y"
end

puts "\nWelcome to this bike store. We sell the following bikes:"
loop do
	show_products
	var_article_nr = select_product
	add_product(var_article_nr)
	show_cart

	continue_shopping = ask_continue
	break unless continue_shopping
end

print_divider
puts "Thank you for ordering."
# print out shopping_cart after adding an article

# ask customer if he/she wants to continue shopping or check out


# if checkout, then bye-bye