friends = [
		{ name: "Robert", occupation: "accountant", city: "Amersfoort" },
		{ name: "Bauke", occupation: "legal officer", city: "Amersfoort" },
		{ name: "Anne-Fokje", occupation: "doctor", city: "Amersfoort" },
		{ name: "Janine", occupation: "nurse", city: "Amersfoort" }
	]

friends.each do |friend|
	puts "#{friend[:name]} lives in #{friend[:city]} 
		and works as #{friend[:occupation]}."
end