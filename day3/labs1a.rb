# helper methods
def print_divider
	puts "*" * 40
	puts "\n"
end

def print_progress_bar
	3.times { sleep 0.5; print "." }
	puts "\n"
end

# ingredients
NUM_TOMATOES = 5
NUM_EGGS = 6

ingredients = [
	{ name: 'bulgur', quantity: "200 grams" },
	{ name: 'lemon juice', quantity: "3 table spoons" },
	{ name: 'olive oil', quantity: "5 table spoons" },
	{ name: 'ras el hanout', quantity: '2 tea spoons' },
	{ name: 'cucumber', quantity: 1 },
	{ name: 'tomatoes', quantity: NUM_TOMATOES },
	{ name: 'apricots', quantity: '200 grams' },
	{ name: 'raisins', quantity: '200 grams' },
	{ name: 'mint', quantity: '50 grams' },
	{ name: 'parsley', quantity: '20 grams' },
]

# print ingredients
puts "|    Let's make tabouleh!    |"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient| 
	puts "#{ingredient[:quantity]} #{ingredient[:name]}."
end

loop do 
	puts "\n"
	print_divider

	puts "Do you have all the ingredients needed (Y/N)?"
	answer = gets.chomp.upcase

	if answer == 'N'
		puts "You need to go shopping"
		print_progress_bar
	elsif answer == 'Y'
		puts "Let's start cooking!"
		break
	else
		puts "That's an invalid imput, please try again."
	end
end

# define steps
steps = [
  { description: "Cooke bulgur", action: "generic_recipe_step" },
  { description: "Put the bulgur in a bowl", action: "generic_recipe_step" },
  { description: "Add lemon juice", action: "generic_recipe_step" },
  { description: "Add olive oil", action: "generic_recipe_step" },
  { description: "Add ras el hanout", action: "generic_recipe_step" },
  { description: "Cut the cucumber", action: "generic_recipe_step" },
  { description: "Add the cucumber to the bowl", action: "generic_recipe_step" },
  { description: "Cut the tomatoes", action: "cut_tomatoes" },
  { description: "Add the tomatoes to the bowl", action: "add_tomatoes_to_bowl" },
  { description: "Cut the apricots", action: "generic_recipe_step" },
  { description: "Add the apricots to the bowl", action: "generic_recipe_step" },
  { description: "Macerate the raisins", action: "generic_recipe_step" },
  { description: "Add the raisins to the bowl", action: "generic_recipe_step" },
  { description: "Cut the mint", action: "generic_recipe_step" },
  { description: "Add the mint to the bowl", action: "generic_recipe_step" },
  { description: "Cut the parsley", action: "generic_recipe_step"},
  { description: "Add the parsley to the bowl", action: "generic_recipe_step" },
  { description: "Mix everything", action: "generic_recipe_step" }
]

# print steps
print_divider
puts "Here are the steps to follow:"

steps.each_with_index do |step, index|
	puts "#{index + 1}) #{step[:description]}"
end

# define actions
def generic_recipe_step
	puts "On it!"
	print_progress_bar
end

def tomato_step(string1,string2="")
	counter = 0
	while counter < NUM_TOMATOES
		counter += 1
		print string1 + counter.to_s + string2
		print_progress_bar
	end
end

def cut_tomatoes
	tomato_step("Cutting tomato "," into pieces")
end

def add_tomatoes_to_bowl
	tomato_step("Adding tomato "," to the bowl")
end

# ask if ready
def ask_if_ready(step, index)
	puts "Are you ready for step #{index + 1}?\n(#{step[:description]})"
	answer = gets.chomp

	answer.upcase == 'Y'
end

# iterating through the steps
steps.each_with_index do |step, index|
	print_divider

	loop do
		ready = ask_if_ready(step, index)
		break if ready
		puts "OK, I will give you some extra time."
		print_progress_bar
	end

	send(step[:action])
end

# done
print_divider
puts "Finished! Bon appetit!"