# Fortune Teller

def fortune
	puts	"First, I must know: What ... is ... your ... FAVORITE NUMBER?!?!?!"
	num = gets.chomp.to_i
	puts	"Let me ... gaze into the crystal ball."
	puts	".\n" * 3
	puts	"Oh my."
	puts	".\n" * 5
	puts	"Yes, I see."
	puts	".\n" * 10
	puts	"It is clear!\n\n"
	if (num < 42) || (42 < num && num <= 50)
		puts	"Ah-HA! You have a bright future of happy puppies and many flowers" +
					" ahead of you! That'll be $50."
	elsif 50 < num && num < 100
		puts	"Oh my! You flirt with danger I see. A fateful decision lies before"+
					" you. Next Tuesday at 4 p.m. BEWARE! ... That'll be $100, please."
	elsif num == 42
		puts	"By the beard of Zaphod Beeblebrox -- it is you! The CHOSEN ONE! " +
					"Quickly! QUICKLY! We must get you to safety!"
	else
		puts	"DEAR HEAVENS! I dare not tell of this future! Nay, I DARE NOT EVEN"+
					" LOOK UPON IT. Begone, accursed one! BEGONE!!!"
	end
end

def tell(proceed)
	if proceed == "YES"
		fortune
	elsif proceed == "NO"
		puts "Well I don't understand why you even came in here then. Goodbye."
	else
		puts "You speak strange words to me. Try again, yes or no?"
		proceed = gets.chomp.upcase
		tell(proceed)
	end
end

puts	"Welcome! WeeeEEEEeeeelcome! Dare you look upon your own future -- yes" +
			" or no!"
proceed = gets.chomp.upcase

tell(proceed)
