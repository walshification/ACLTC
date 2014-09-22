class Ninja

	def speak
		puts "From the shadows, I strike."
	end
	
	def vanish
		puts "poof"
	end
	
end

class Bird

	def speak
		puts "Tweet tweet!"
	end
	
	def fly
		puts "flap flap flap flap flap"
	end
	
end

class Knight

	def speak
		puts "Hail, I cometh for food and adventure!"
	end
	
	def duel
		puts "Fie, villain, have at thee!"
	end
	
end

class Goat

	def speak
		puts "Baaaaaaaaaaaaa!"
	end
	
	def jump
		puts "clip-clop"
	end
	
end

class Politician

	def speak
		puts "I approve this message."
	end
	
	def deliberate
		puts "We must deal with this ninja menace!"
	end
	
end

Ryu = Ninja.new
mockingbird = Bird.new
Sir_Pennible = Knight.new
Trevor = Goat.new
senator = Politician.new

mockingbird.speak
Sir_Pennible.speak
Trevor.speak
Ryu.speak
Sir_Pennible.duel
Trevor.jump
mockingbird.fly
Ryu.vanish
senator.deliberate
senator.speak