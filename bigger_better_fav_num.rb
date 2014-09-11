# Learn to Program, Chapter 5, bigger, better favorite number

def bigger_better
	puts "What's your favorite number? (type \"end\" to stop)"
	number = gets.chomp
	if number == "end"
		puts "Nice chatting with you!"
	else
		better_fav = number.to_i + 1
	
		puts	number + " is pretty cool. But isn't " + better_fav.to_s + " a " +
					"bigger, better number? Knowing that now, can I ask again:"
		bigger_better
	end
end

puts "Hi there!"

bigger_better
