cost = 4.99
print "How many pizzas do you want to order?"
number = gets.to_i
amount = number * cost
if amount < 10.50
  amount += 5.00
end
puts "Total amount is #{amount} euro."