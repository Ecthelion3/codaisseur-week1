def print_pizza
pizzas = [
		{type: "Calzone", price: 5.49},
		{type: "Hawai", price: 4.99},
		{type: "Quatro Stagioni", price: 5.19}
	]

	puts "A pizza #{$pizzas[pizza][:type]} costs Euro #{$pizzas[pizza][:price]}."
end

print_pizza(0)
print_pizza(1)
print_pizza(2)