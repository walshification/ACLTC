# A program that rendomizes the letters in a word.
puts "Welcome to the Dyslexifier!"
puts "Enter a word whose letters we will scramble:"
word = gets.chomp

puts "DYSLEXIFIED!"
puts word.split("").shuffle.join
