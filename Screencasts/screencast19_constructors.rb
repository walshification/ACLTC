# Person Constructor

class Person

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

class Dog

	def initialize
		@name = "Spot"
		@color = "brown"
		@tail = "wagging"
	end
	
	def pet
		"The dog's tail is #{@tail}."
	end

end

class Ninja

	def initialize
		@weapon = "ninjato"
		@mood = "vengeful"
		@name = "unknown"
	end
	
	def name
		@name
	end

end

class Wizard

	def initialize
		@appearance = "bearded"
		@spellbook = ["Magic Missile", "Detect Magic"]
		@temperment = "absentminded"
	end
	
	def read_spellbook
		puts @spellbook.join(", ")
	end

end

test_person = Person.new
test_person.status

test_dog = Dog.new
test_dog.pet

test_ninja = Ninja.new
puts test_ninja.name

test_wizard = Wizard.new
test_wizard.read_spellbook