# Star Wars Pop Quiz

puts "Welcome to the Pop Quiz Program! I hope you've watched Star Wars recently."

correct = 0

puts "Question the First: What is the color of Obi-Wan Kenobi's lightsaber?"
answer = gets.chomp

if answer == "blue"
	puts "You should become a Jedi, like your father before you."
	correct += 1
else
	puts "Trust your feelings. You know them to be true!"
end

puts "Question the Second: What is the color of Darth Vader's lightsaver?"
answer = gets.chomp

if answer == "red"
	puts "You would be a powerful ally."
	correct += 1
else
	puts "Do not underestimate the power of the Dark Side."
end

puts "Question the Third: What is the color of Luke Skywalker's second " +
			"lightsaber?"
answer = gets.chomp

if answer == "green"
	puts "The Force will be with you, always."
	correct += 1
else
	puts "Your arrogance is your weakness."
end

puts "Your final score is: #{correct}."
if correct == 3
	puts "The Force is strong with this one."
elsif correct == 2
	puts "Together we can rule the galaxy!"
elsif correct == 1
	puts "Complete your training."
else
	puts "Ain't no mystical energy controlling your destiny."
end

puts "Thanks for playing!"