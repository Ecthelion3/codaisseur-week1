$pizzas = ["Calzone","Hawai","Quatro Stagione"]
$pizza_prices = [5.49, 4.99, 5.19]

def price_of_a_pizza(n)
	"A pizza #{$pizzas[n]} will cost you #{$pizza_prices[n]}"
end

puts price_of_a_pizza(0)
puts price_of_a_pizza(1)
puts price_of_a_pizza(2)