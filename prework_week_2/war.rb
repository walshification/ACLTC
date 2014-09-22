# War

full_deck = []
player_1 = []
player_2 = []
card = 0
turn_count = 1
war_count = 1

class Card
	def initialize(suit, name, value)
		@suit = suit
		@name = name
		@value = value
	end
	
	def display
		"#{@name} of #{@suit}"
	end
	
	def value
		return @value
	end
end

def make_deck(deck, suit)
	i = 2
	9.times do
		deck << Card.new(suit, i, i)
		i += 1
	end
	deck << Card.new(suit, "Jack", 11)
	deck << Card.new(suit, "Queen", 12)
	deck << Card.new(suit, "King", 13)
	deck << Card.new(suit, "Ace", 14)
end

def p1_wins(p1_deck, p2_deck)
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
end

def p2_wins(p1_deck, p2_deck)
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
end

def p1_wins_one_war(p1_deck, p2_deck)
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
end

def p2_wins_one_war(p1_deck, p2_deck)
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
end

def p1_wins_two_wars(p1_deck, p2_deck)
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
	p1_deck << p1_deck.shift
	p1_deck << p2_deck.shift
end

def p2_wins_two_wars(p1_deck, p2_deck)
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
	p2_deck << p2_deck.shift
	p2_deck << p1_deck.shift
end

def war(p1_deck, p2_deck, n, war_count)
	puts "Player 1 puts face down: #{p1_deck[n+1].display}, " +
			 "#{p1_deck[n+2].display}, #{p1_deck[n+3].display}. And the face up " +
			 "card is: #{p1_deck[n+4].display}"
	puts "Player 2 puts face down: #{p2_deck[n+1].display}, " +
			 "#{p2_deck[n+2].display}, #{p2_deck[n+3].display}. And the face up " +
			 "card is: #{p2_deck[n+4].display}"
	case
		when p1_deck[n+4].value > p2_deck[n+4].value
			return ["Player 1 wins this war!\n\n", war_count]
		when p1_deck[n+4].value < p2_deck[n+4].value
			return ["Player 2 wins this war!\n\n", war_count]
		when p1_deck[n+4].value == p2_deck[n+4].value
			puts "THIS MEANS ANOTHER WAR!!!"
			war_count += 1
			war(p1_deck, p2_deck, n+4, war_count)
	end
end

def turn(count, p1_deck, p2_deck, n)
	puts "Turn #{count}:"
	puts "Player 1: #{p1_deck[n].display}"
	puts "Player 2: #{p2_deck[n].display}"
	case
		when p1_deck[n].value > p2_deck[n].value
			return "Player 1 wins that round!\n\n"
		when p1_deck[n].value < p2_deck[n].value
			return "Player 2 wins that round!\n\n"
		when p1_deck[n].value == p2_deck[n].value
			return "THIS MEANS WAR!!!"
	end
end

def yes_no(question)
	puts question
	answer = gets.chomp.downcase
	if answer == "yes" || answer == "no"
		return answer
	else
	puts "I'm sorry; I don't understand. Please respond \"yes\" or \"no.\""
	yes_no(question)
	end
end

make_deck(full_deck, "hearts")
make_deck(full_deck, "diamonds")
make_deck(full_deck, "clubs")
make_deck(full_deck, "spades")

puts "Welcome to War!"
play_war = yes_no("Would you like to play a game?")
if play_war == "yes"
	full_deck.shuffle!.shuffle!.shuffle!
	
	while card < full_deck.length
		player_1 << full_deck[card]
		card += 1
		player_2 << full_deck[card]
		card += 1
	end
	
	until player_1.length == 0 || player_2.length == 0
		outcome = turn(turn_count, player_1, player_2, 0)
		case
			when outcome == "Player 1 wins that round!\n\n"
				puts outcome
				p1_wins(player_1, player_2)
			when outcome == "Player 2 wins that round!\n\n"
				puts outcome
				p2_wins(player_1, player_2)
			when outcome == "THIS MEANS WAR!!!"
				puts outcome
				war_outcome = war(player_1, player_2, 0, war_count)
				case 
					when war_outcome[0] == "Player 1 wins this war!\n\n" && 
							 war_outcome[1] == 1
						puts war_outcome[0]
						p1_wins_one_war(player_1, player_2)
					when war_outcome[0] == "Player 1 wins this war!\n\n" && 
							 war_outcome[1] == 2
						puts war_outcome[0]
						p1_wins_two_wars(player_1, player_2)
					when war_outcome[0] == "Player 2 wins this war!\n\n" && 
							 war_outcome[1] == 1
						puts war_outcome[0]
						p2_wins_one_war(player_1, player_2)
					when war_outcome[0] == "Player 2 wins this war!\n\n" && 
							 war_outcome[1] == 2
						puts war_outcome[0]
						p2_wins_two_wars(player_1, player_2)
				end
		end
		turn_count += 1
	end
	
	if player_1.length == 0
		puts "Player 2 is the winner!"
	else
		puts "Player 1 is the winner!"
	end
elsif play_war == "no"
	puts "Very well, coward!"
end