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
NUM_POTATOES = 5
NUM_EGGS = 6

ingredients = [
	{ name: 'potatoes', quantity: NUM_POTATOES },
	{ name: 'eggs', quantity: NUM_EGGS },
	{ name: 'onion', quantity: 1 },
	{ name: 'oil', quantity: 'some' },
	{ name: 'salt', quantity: 'some' },
]

# print ingredients
puts "|    Let's cook a Spanish Omelette!    |"
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
  { description: "Scrape potatoes", action: "scrape_potatoes" },
  { description: "Cut potatoes into thick slices", action: "cut_potatoes" },
  { description: "Chop the onion", action: "generic_recipe_step" },
  { description: "Heat the oil in a large frying pan", action: "generic_recipe_step" },
  { description: "Add potatoes to the pan", action: "add_potatoes_to_pan" },
  { description: "Add onion to the pan", action: "generic_recipe_step" },
  { description: "Strain potatoes and onions through a colander into a large bowl", action: "generic_recipe_step" },
  { description: "Break the eggs", action: "break_eggs" },
  { description: "Beat the eggs separately", action: "generic_recipe_step" },
  { description: "Stir into the bowl the potatoes with plenty of salt", action: "generic_recipe_step" },
  { description: "Heat a little of the strained oil in a smaller pan", action: "generic_recipe_step" },
  { description: "Tip everything into the pan and cook on a moderate heat", action: "generic_recipe_step"},
  { description: "When almost set, invert on a plate and slide back into the pan", action: "generic_recipe_step" },
  { description: "Cook a few more minutes and slide on to a plate and cool for 10 minutes before serving", action: "generic_recipe_step" }
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

def potato_step(string1,string2="")
	counter = 0
	while counter < NUM_POTATOES
		counter += 1
		print string1 + counter.to_s + string2
		print_progress_bar
	end
end

def scrape_potatoes
	potato_step("Schraping potato ")
end

def cut_potatoes
	potato_step("Cutting potato "," into thick slices")
end

def add_potatoes_to_pan
	potato_step("Adding potato "," to the pan")
end

def break_eggs
	counter = 0
	while counter < NUM_EGGS
		counter += 1
		print "Breaking egs #{counter}"
		print_progress_bar
	end
end

generic_recipe_step
scrape_potatoes
cut_potatoes
add_potatoes_to_pan
break_eggs