# Learn to Program, Chapter 2 exercises

# units of time based on the unit below them
minute = 60
hour = 60
day = 24
year = 365
decade = 10

# Kept getting an error when I did the next step, which I eventually had to look
# up: "no implicit conversion of Fixnum into String." So now I know what .to_s
# is for :)

puts	"There are #{year} days in a year and #{day} hours in a day, which means" + 
			" there are " + (year*day).to_s + " hours in a year!"
puts	" "
puts	"There are #{hour} minutes in an hour, #{day} hours in a day, #{year} " + 
			"days in a year, and #{decade} years in a decade. That means there are " + 
			(hour*day*year*decade).to_s + " minutes in a decade!"
puts	" "

puts	"If you give me some information, I can tell you how old I am in seconds."
puts	"What year is it?"
current_year = gets.chomp.to_i

my_years = current_year - 1982

puts	"What month is it?"
my_month = gets.chomp.to_s

case my_month
	when "January"
		month_in_days = 0
	when "February"
		month_in_days = 31
	when "March"
		month_in_days = 59
	when "April"
		month_in_days = 90
	when "May"
		month_in_days = 120
	when "June"
		month_in_days = 151
	when "July"
		month_in_days = 181
	when "August"
		month_in_days = 212
	when "September"
		month_in_days = 243
	when "October"
		month_in_days = 273
	when "November"
		month_in_days = 304
	when "December"
		month_in_days = 334
	else
		puts "Sorry, I don't recognize that month."
end

puts "What day is it?"
my_day = gets.chomp.to_i

# November 3 is my birthday, so to be accurate, I need to add the first two
# months of 1982 (in days) to my age.
first_bit = 58

puts	"It is #{my_month} #{my_day}, #{current_year}, which makes me " +
			(minute*(hour*(day*((my_years*year)+first_bit+month_in_days)))).to_s + 
			" seconds old."
			
puts	" "
puts	"On a similar note, if Chris Pine is 1,160,000,000 seconds old, then he " +
			"is roughly " + (1160000000/60/60/24/365).to_s + " years old."
			
puts 	" "
puts	"Time is weird."