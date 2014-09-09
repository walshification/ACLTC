# Everyone likes to be greeted.
puts "Welcome to the Alphabetizer!"
# Ask for what we want
puts "Please enter 6 words, one at a time."

# The array we will manipulate.
words = []

# Getting six inputs.
6.times do
	puts "Enter your word:"
	words << gets.chomp
end

# Let the user know that the output will follow.
puts "Now I'll work my magic:"

words.each_with_index do |word, position|
	if position % 2 == 0 # Grabbing every other word.
		puts word.upcase
	else
		puts word.downcase
	end
end

# Justify the different cases.
puts "You may have noticed I really liked every other word."