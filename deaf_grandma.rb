# Deaf grandma (extended)

puts	"Oh, hello there. It's so good of you to visit grandma. How are you?"
answer = gets.chomp
escape = 0

while escape < 3
	if answer == answer.upcase && answer != "BYE"
		escape = 0
		puts	"NO, NOT SINCE " + (rand(21) + 1930).to_s + "!"
		answer = gets.chomp
	elsif answer == "BYE"
		escape += 1
		puts	"ARE YOU LEAVING? I JUST MADE COOKIES. DO YOU WANT ANY?"
		answer = gets.chomp
		if answer == "BYE"
			escape += 1
			puts	"I DIDN'T HEAR YOU, SWEETIE. LET ME GET THOSE COOKIES."
			answer = gets.chomp
			if answer == "BYE"
				escape += 1
			end
		end
	else
		escape = 0
		puts	"HUH?! SPEAK UP, SONNY!"
		answer = gets.chomp
	end
end

puts	"No need to shout, dear."