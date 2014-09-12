# 99 Bottles of Beer on the Wall

puts	"Want to sing a song with me?"
answer = gets.chomp

if answer == "yes"
	puts "Awesome! This is my favorite."
	beers = 99
	while beers > 0
		puts	beers.to_s + " bottles of beer on the wall."
		puts	beers.to_s + " bottles of beeeeeeeeer."
		puts	"Take one down; pass it around."
		beers -= 1
		puts	beers.to_s + " bottles of beer on the wall."
		puts	""
	end
else
	puts	"Well, fine then. You're no fun."
end
