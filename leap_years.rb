# Leap years

leaps = []

puts	"Please give me a starting year."
starting = gets.chomp
start_year = starting.to_i

puts	"Now give me an ending year, and I'll find the leap years between them."
ending = gets.chomp
end_year = ending.to_i

while start_year <= end_year
	if (start_year % 4 == 0) && (start_year % 400 == 0)
		leaps << start_year.to_s
		start_year += 1
	elsif (start_year % 4 == 0) && (start_year % 100 != 0)
		leaps << start_year.to_s
		start_year += 1
	else
		start_year += 1
	end
end

puts 	""
puts	"The leap years between (and including) " + starting + " and " +
			ending + " are:"
leaps.each do |year|
	puts year
end