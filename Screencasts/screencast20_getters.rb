# Getters

class Person

	attr_reader :name, :age, :occupation, :mood

	def initialize
		@name = "Jeffrey"
		@age = 18
		@occupation = "janitor"
		@mood = "testy"
	end

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
	
	def status
		puts "#{@name}'s current status is:"
		puts "#{@age} years old."
		puts "Working as a #{@occupation}."
		puts "Currently feeling #{@mood}."
	end

end

Jeffrey = Person.new
puts Jeffrey.name
puts Jeffrey.age
puts Jeffrey.occupation
puts Jeffrey.mood
