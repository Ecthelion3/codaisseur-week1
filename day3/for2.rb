puts "Enter the numer from which you want to countdown:"
n = gets.chomp.to_i
puts
for number in n.downto(0)
	puts number
end