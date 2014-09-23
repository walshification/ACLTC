# Calculator

class Calculator

	def double(number)
		number * 2
	end
	
	def add(number1, number2)
		number1 + number2
	end
	
	def subtract(number1, number2)
		number1 - number2
	end
	
	def multiply(number1, number2)
		number1 * number2
	end
	
	def divide(number1, number2)
		number1.to_f / number2.to_f
	end
	
	def modulo(number1, number2)
		number1 % number2
	end
	
	def exponent(number1, number2)
		e = 1
		i = 0
		case
			when number2 == 1
				return number1
			when number2 == -1
				return 1 / number1.to_f
			when number2 == 0
				return 1
			when number2 > 1
				until i == number2
					e *= number1
					i += 1
				end
				return e
			when number2 < -1
				until i == number2.to_f
					e *= number1.to_f
					i -= 1
				end
				e = 1 / e
				return e
		end
	end
	
	def factorial(number)
		f = 1
		until number == 0
			f *= number
			number -= 1
		end
		return f		
	end

end

HAL = Calculator.new

puts HAL.double(6)					#=> 12
puts HAL.add(6, 5)					#=> 11
puts HAL.subtract(6, 5)			#=> 1
puts HAL.multiply(30, 4)		#=> 120
puts HAL.divide(72, 6)			#=> 12.0
puts HAL.modulo(6, 2)				#=> 0
puts HAL.exponent(6, 7)			#=> 279936
puts HAL.exponent(6, -3)		#=> 0.004629629...
puts HAL.factorial(6)				#=> 720
