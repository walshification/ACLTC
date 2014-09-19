# Connect Four

game_board =	[
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"],
	["-", "-", "-", "-", "-", "-"]
]

def state board
	board.each do |space|
		puts space.join(" ")
	end
end

def turn prompt
	puts prompt
	return gets.chomp.to_i - 1
end

def gravity n, x, y
	if n[y][x] == "X"
		return "That column is full."
	end
	if n[y+1][x] == "X"
		n[y].delete_at(x)
		n[y].insert(x, "X")
		return "Good move!"
	elsif n[y+2][x] == "X"
		n[y].delete_at(x)
		n[y].insert(x, "X")
		return "Good move!"
	elsif n[y+3][x] == "X"
		n[y].delete_at(x)
		n[y].insert(x, "X")
		return "Good move!"
	elsif n[y+4][x] == "X"
		n[y].delete_at(x)
		n[y].insert(x, "X")
		return "Good move!"
	elsif n[y+5][x] == "X"
		n[y].delete_at(x)
		n[y].insert(x, "X")
		return "Good move!"
	elsif n[y+6][x] == "X"
		n[y].delete_at(x)
		n[y].insert(x, "X")
		return "Good move!"
	end
	
end

play = true

while play == true
	puts	"Would you like to play a game? Type \"board\" to see the game board " +
			"or \"exit\" to exit."
	new_game = gets.chomp.downcase
	if new_game == "board"
		game_board.each do |space|
			puts space.join(" ")
		end
		x = turn("Choose a column 1-7 to put a piece in.")
		gravity(game_board, x, 0)
		state(game_board)
		
	elsif new_game == "exit"
		play = false
	else
		puts	"I didn't catch that."
	end
end

puts	"See you next time!"