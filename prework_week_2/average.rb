# Average

def number_averager
	sum = 0
	count = 0
	averager = true
	
	while averager == true
		puts	"Enter a number you would like included in an average, or press enter " +
				"to end."
		number = gets.chomp.to_i
		if number  != "".to_i
			sum += number
			count += 1
		else
			averager = false
		end
	end

	if count == 0
		puts "No numbers were entered. Until next time!"
	else
		average = sum.to_f / count.to_f
		puts "The average of your numbers is #{average}."
		answer = yes_no("Would you like to average other numbers?")
		if answer == "yes"
			number_averager
		else
			puts	"Until next time!"
		end
	end
end

def yes_no (question)
	puts question
	return gets.chomp.downcase
end

puts	"Welcome to the Number Averager."
answer = yes_no("Would you like to find an average today? (yes or no)")
	
if answer == "yes"
	number_averager
else
	puts "Until next time!"
end
