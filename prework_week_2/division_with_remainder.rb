# Division with remainder

puts	"Gimme a number any number."
numerator = gets.chomp.to_i

puts	"Now gimme another and I'll divide the first one by it."
denominator = gets.chomp.to_i

quotient = (numerator / denominator).to_i
remainder = numerator % denominator

puts	"The answer is: " + quotient.to_s + " R" + remainder.to_s + "."
