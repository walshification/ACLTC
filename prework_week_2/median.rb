# Median

def yes_no(question)
	puts question
	answer = gets.chomp.downcase
	if answer == "yes" || answer == "no"
		return answer
	else
	puts "I'm sorry; I don't understand. Please respond \"yes\" or \"no.\""
	yes_no(question)
	end
end

def happy_median
	num_group = []
	median		= 0
	count			= 0
	done			= false
	
	puts	"Welcome to the Median Finder. Where we find a happy median!"
	puts	"Enter as many numbers as you wish, followed by Enter."
	puts	"Type \"done\" when you are complete, and I will find the median of" +
				" the numbers.\n\n"
	
	while done == false
		number = gets.chomp
		if number == "done"
			done = true
			puts "Okey-doke!\n\n"
		elsif number.to_f.to_s == number.to_s || number.to_i.to_s == number.to_s
			count += 1
			num_group << number.to_f
			puts "Perfect!\n\n"
		else
			puts "I don't understand. Please enter a number or \"done.\"\n\n"
		end
	end

	num_group.sort!

	if count == 0
		puts	"Whoops! Did you forget to enter your numbers? I didn't record any.\n\n"
	else
		if num_group.length % 2 == 1
			median = num_group[(num_group.length / 2).to_i]
		else
			median =	(num_group[(num_group.length / 2)] +
								num_group[(num_group.length / 2 - 1)]) / 2
		end
		if median == median.to_i
			puts	"The median of your numbers is #{median.to_i}!\n\n"
		else
			puts	"The median of your numbers is #{median}!\n\n"
		end
	end
	

	again = yes_no("Would you like to find another happy median?\n\n")
	if again == "yes"
		happy_median
	else
		puts	"Until next time!"
	end
end

happy_median
