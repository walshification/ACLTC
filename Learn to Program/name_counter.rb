# Letter counting program

puts	"Hi there! Let's find out how many letters are in your name."
puts	"What is your first name?"
first = gets.chomp

puts	"Nice to meet you, " + first + "! How about your middle name?"
middle = gets.chomp

puts	"Cool! Last but not least?"
last = gets.chomp

puts	"Here we have it, " + first + " " + middle + " " + last + ", you're " +
			"name is " + (first.length + middle.length + last.length).to_s +
			" letters long!"
