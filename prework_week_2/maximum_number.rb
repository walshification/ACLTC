# Maximum number

numbers = []

def ask question
	puts question
	return gets.chomp.to_i
end

puts	"Welcome to the Highest Numberator! If you give me 10 numbers, I'll " +
			"tell you the highest one."
numbers << ask("Number the first!")
numbers << ask("Gimme another.")
numbers << ask("That's two. Next!")
numbers << ask("Moving right along.")
numbers << ask("Halfway there!")
numbers << ask("This six.")
numbers << ask("Seven is heaven.")
numbers << ask("Another please.")
numbers << ask("Almost done.")
numbers << ask("Last one.")

highest = numbers[0]
numbers.each do |n|
	if n >= highest
		highest = n
	end
end

puts	"The highest number you entered is #{highest}!"
