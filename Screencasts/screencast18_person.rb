# Person

class Person
	def call(name)
		@name = name
	end
		
	def measure(years)
		@age = years
	end
	
	def employ(occupation)
		@occupation = occupation
	end
	
	def observe(emotion)
		@mood = emotion
	end
	
	def age
		@age
	end
	
	def occupation
		@occupation
	end
	
	def mood
		@mood
	end
	
	def status
		puts "#{@name}'s current status is:"
		puts "#{@age} years old."
		puts "Working as a #{@occupation}."
		puts "Currently feeling #{@mood}."
	end

end

Chris = Person.new
Chris.call("Chris")
Chris.measure(31)
Chris.employ("future software engineer")
Chris.observe("curious")

puts Chris.status