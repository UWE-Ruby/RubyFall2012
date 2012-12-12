class TicTacToe
	attr_accessor :board, :player_symbol, :computer_symbol, :current_player

	SYMBOLS = [:X, :O]
	PLAYERS = [:computer, :player]

	def initialize(starting_player = nil, player_symbol = nil)
		@players = {:player => @player, :computer => "Computer"}
		set_symbols(player_symbol)

		@starting_player = @players[starting_player] || random_player

		@current_player = @players[starting_player]

		@board = {:A1 => " ", :A2 => " ", :A3 => " ",
				  :B1 => " ", :B2 => " ", :B3 => " ",
				  :C1 => " ", :C2 => " ", :C3 => " "}

 		@draw = false
 		@over = false
 		@player_won = false
	end

	def set_symbols(player_symbol)
		if (player_symbol.nil?)
			n = Random.rand(2).to_i
		else
			n = SYMBOLS.index(player_symbol)
		end
		@player_symbol = SYMBOLS[n]
		@computer_symbol = SYMBOLS[n - 1]
		@symbols = [@player_symbol, @computer_symbol]
	end

	def welcome_player
		return "Welcome #{@players[:player]}"
	end

	#setter
	def player=(player)
		@players[:player] = player
		@current_player ||= @players[:player]
	end

	def player
		@players[:player]
	end

	def random_player
		@players[PLAYERS[Random.rand(2)]]
	end

	def random_symbol
		SYMBOLS[Random.rand(2)]
	end

	def indicate_player_turn
		puts "#{@current_player}'s Move:"
	end

	#Moves

	def computer_move
		@com_move = open_spots[Random.rand(open_spots.length)]
		@board[@com_move] = @computer_symbol
		@com_move
	end

	def get_player_move
		move = gets.chomp
	end

	def player_move
		move = "" 
		move = get_player_move while @board[move.to_sym] != " "

		@board[move.to_sym] = @player_symbol
		@current_player = @players[:computer]

		move.to_sym
	end

	def open_spots
		open = []
		@board.each { |index, value| open << index if @board[index] == " " }
		open
	end

	def current_state
		@board.collect { |index, value| value.to_s }
	end

	def determine_winner
		case
		when check_for_win(@player_symbol)
			@player_won = true
		when check_for_win(@computer_symbol)
			@computer_won = true
		else
			@draw = true
		end
		@over = true
	end

	def check_for_win(symbol)	
		return true if
			@board[:A1] == symbol && @board[:A2] == symbol && @board[:A3] == symbol || #horizontal
		   	@board[:B1] == symbol && @board[:B2] == symbol && @board[:B3] == symbol ||
		   	@board[:C1] == symbol && @board[:C2] == symbol && @board[:C3] == symbol ||
		   	@board[:A1] == symbol && @board[:B1] == symbol && @board[:C1] == symbol || #vertical
		   	@board[:A2] == symbol && @board[:B2] == symbol && @board[:C2] == symbol ||
		   	@board[:A3] == symbol && @board[:B3] == symbol && @board[:C3] == symbol ||
		   	@board[:A1] == symbol && @board[:B2] == symbol && @board[:C3] == symbol || #diagonal
		   	@board[:A3] == symbol && @board[:B2] == symbol && @board[:C1] == symbol
		else return false
	end

	#Boolean return methods
	def spots_open?
		current_state.include? " "
	end

	def player_won?
		@player_won
	end

	def draw?
		@draw
	end

	def over?
		@over
	end

end