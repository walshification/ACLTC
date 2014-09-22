# New car and the return value

class Car

	def new_car
		[]
	end
	
	def steering
		"wheels"
	end
	
	def seating
		"seats"
	end
	
	def shifting
		"transmission"
	end
	
	def driving
		"engine"
	end
	
end

sedan = Car.new
chevy = sedan.new_car
chevy << sedan.steering
chevy << sedan.seating
chevy << sedan.shifting
chevy << sedan.driving

puts chevy
