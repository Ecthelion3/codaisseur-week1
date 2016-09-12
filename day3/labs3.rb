random = rand(1..100)

def computer_wins
	
end

counter = 0
until counter == 10
	print "Make a guess? "
	guess = gets.chomp.to_i

	if guess == random
		puts "You win!!\nYou recieve #{(10 - counter) * 10} points.\nGAME OVER!"
		break
	else
		if counter < 10
			if guess > random
				puts "Lower!"
			else
				puts "Higher!"
			end
		else
			puts "Computer wins, you loose!!\nGAME OVER!"
		end
	end
	counter += 1
end