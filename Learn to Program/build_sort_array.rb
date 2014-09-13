# Building and sorting an array

build_sort = []

puts	"Hello and welcome to the Array Builder and Sorter (catchy, I know)."
puts	"Enter a word you would like me to remember and sort. Press Enter " +
			"on an empty entry to end."
word = gets.chomp

while word != ""
	build_sort.push word
	word = gets.chomp
end

puts	"Here are the words you entered:"

build_sort.sort.each do |word|
	puts word
end

puts	""
puts	"Until next time!"
