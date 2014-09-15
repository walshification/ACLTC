# Madlibs

puts	"Welcome to my madlibs program. Let's write a story!"
puts	"Give me a name."
name = gets.chomp

puts	"Thanks! Now give me a noun."
n1 = gets.chomp

puts	"I always liked that one. Now, an adjective, please."
adj = gets.chomp

puts	"Very descriptive! I'll take another noun if you have one."
n2 = gets.chomp

puts	"Perfect! And, lastly, a verb."
v = gets.chomp

puts	"Yes! Alright, now let me just ... put these ... together...."
puts	".\n" * 3
puts	"Oh, this is good."
puts	".\n" * 3
puts	"Did not expect that!"
puts	".\n" * 3
puts	"Alright! Our story is:"
puts	""
puts	"Once upon a time, there lived a wizard named #{name}. One day, a troll"
puts	"tried to eat #{name}, so #{name} turned the troll into a giant #{n1}."
puts	""
puts	"\"#{adj.capitalize}!\" #{name} cried, pleased."
puts	""
puts	"In celebration of a spell well done, #{name} gave each child living in"
puts	"the nearby village one #{n2}. The villagers who saw this yelled, \"Go "
puts	"#{v} the village chief!\" They threw a grand party afterwards, and they"
puts	"and #{name} danced long into the night!"
puts	""
puts	"The End."
