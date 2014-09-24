# Connect Four

game_board =	[
	["-", "-", "-", "-", "-", "-", nil],
	["-", "-", "-", "-", "-", "-", nil],
	["-", "-", "-", "-", "-", "-", nil],
	["-", "-", "-", "-", "-", "-", nil],
	["-", "-", "-", "-", "-", "-", nil],
	["-", "-", "-", "-", "-", "-", nil],
	["-", "-", "-", "-", "-", "-", nil]
]

play = true

def state(board)
	board.each do |space|
		puts space.join(" ")
	end
end

def turn(board, prompt)
	
	state(board)
	puts prompt
	x = gets.chomp.to_i - 1
	y = 6	
	
	until board[y][x] != "X" || y == 0
		y -= 1
	end
	
	if y < 0
		return turn(board, "Try again. Choose a different column 1-7.")
	else
		board[y].delete_at(x)
		board[y].insert(x, "X")
		puts "Good move!"
	end
	
end

while play == true
	puts	"Would you like to play a game? Type \"board\" to see the game board " +
				"or \"exit\" to exit."
	new_game = gets.chomp.downcase
	if new_game == "board"
		win = false
		until win == true
			result = turn(game_board, "Choose a column 1-7 to put a piece in.")
		end
	elsif new_game == "exit"
		play = false
	else
		puts	"I didn't catch that."
	end
end

puts	"See you next time!"