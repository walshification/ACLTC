# A word-chooser program.

puts "Welcome to the Word Chooser! Please enter four words, one at a time."

words = []

4.times do
	puts "Enter a word:"
	words << gets.chomp
end

puts "Now, enter a number between 1 and 4:"
choice = gets.chomp.to_i - 1
puts words[choice]
