counter = 0
loop do
	counter += 1
	if counter % 2 == 1
		next
	end
	if counter == 4
		next
	end
	puts counter
	if counter >= 10
		break
	end
end