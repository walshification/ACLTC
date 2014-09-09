# State capital program

puts	"Welcome to the State Capital Program! I'm here to help you with your" +
		" state capitals!"

def state_cap
	state_capitals = {
		"Illinois"		=> "Springfield",
		"Missouri"		=> "Jefferson City",
		"New York"		=> "Albany",
		"Alabama" 		=> "Montgomery",
		"West Virginia"	=> "Charleston"
	}

	puts	"Choose which state capital you would like to know:"
	state_capitals.each do |state, capital|
		puts state
	end
	choice = gets.chomp

	puts "The capital of #{choice} is #{state_capitals[choice]}."
	puts "Would you like to know another? (yes or no)"
	again = gets.chomp
	if again == "yes"
		state_cap
	else
		puts "Until next time!"
	end
end

state_cap