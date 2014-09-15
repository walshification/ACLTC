# NASA Countdown

puts "I need a \"Go\"/\"No go\" for liftoff."
mission = gets.chomp.upcase
countdown = 10

if mission == "GO"
	while countdown >= 0
		puts countdown
		countdown -= 1
	end
	puts "BLASTOFF!"
else
	puts "ABORT! ABORT! ABORT!"
end
