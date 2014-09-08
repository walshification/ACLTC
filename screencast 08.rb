# A number-guessing game.
puts "Welcome to the Number Guessing Game!"
puts "Guess a number between 1 and 100."
the_right_answer = rand(100)
guess_count = 0

10.times do
  guess_count += 1
	guess = gets.chomp.to_i

	if guess == the_right_answer
		if guess_count == 1
			puts "You win in only 1 try. What luck!"
		else
			puts "You win in #{guess_count} tries! Great job!"
		end
		break
	elsif guess > the_right_answer && guess_count < 10
		puts "Too high! Guess again."
	elsif guess < the_right_answer && guess_count < 10
		puts "Too low! Guess again."
	else
	  puts "You only get 10 tries. You lose!"
	end
end