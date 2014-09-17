# Connect Four

game_board =	[
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"],
]

def state board
	board.each do |space|
		puts space.join("")
	end
end

def turn prompt
	puts prompt
	return gets.chomp.to_i - 1
end

play = true

while play == true
	puts	"Would you like to play a game? Type \"board\" to see the game board " +
			"or \"exit\" to exit."
	new_game = gets.chomp.downcase
	if new_game == "board"
		game_board.each do |space|
			puts space.join("")
		end
		n = turn("Choose a column 1-7 to put a piece in.")
		i = 0
		until game_board[i][n] == "X" || i == 6
			i += 1
		end
		game_board[i].delete_at(n)
		game_board[i].insert(n, "X")
		state(game_board)
		n = turn("Choose a column 1-7 to put a piece in.")
		i = 0
		until game_board[i][n] == "X" || i == 6
			i += 1
		end
		game_board[i].delete_at(n)
		game_board[i].insert(n, "X")
		state(game_board)
		
	elsif new_game == "exit"
		play = false
	else
		puts	"I didn't catch that."
	end
end

puts	"See you next time!"