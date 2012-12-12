class TicTacToe
	attr_accessor :player, :current_player

	SYMBOLS = [:X, :O] 

	def initialize(player=nil, symbol=nil)
		@board = {
			:A1 => " ", :A2 => " ", :A3 => " ",
			:B1 => " ", :B2 => " ", :B3 => " ",
			:C1 => " ", :C2 => " ", :C3 => " "
		}
		# if symbol == nil
		# 	@player_symbol, @computer_symbol = :X, :O
		# if player == :computer && symbol == :O
		# 	@computer_symbol = :O
		# 	@player_symbol = :X
		# elsif player == :computer && symbol == :X
		# 	@computer_symbol = :X
		# 	@player_symbol = :O
		# elsif player != :computer && symbol == :O
		# 	@computer_symbol = :X
		# 	@player_symbol = :O		
		# else player != :computer && symbol == :X
		# 	@computer_symbol = :O
		# 	@player_symbol = :X	
		# end		
		current_player(player)		
	end
	def welcome_player
		"Welcome #@player"
	end
	def current_player(player=nil)
		# if @current_player == nil 
			# @current_player = [@player, "Computer"].sample
		# end
		if player == :computer
			@current_player = "Computer"
		elsif player == nil
			@current_player = [@player, "Computer"].sample
		else	
			@current_player = player
		end	
	end
	def player_symbol
		@player_symbol = SYMBOLS.sample
	end
	def computer_symbol
		@player_symbol == :X ? @computer_symbol = :O : @computer_symbol = :X
	end
	def indicate_palyer_turn
		puts "#@current_player's Move:"
	end
	def get_player_move
		@move = gets
	end
	def open_spots
		@board.select {|k,v| v == " "}
	end
	def computer_move
	    open_spots.sample
	end
	def current_state
	end
	def player_move
	end
	def determine_winner
	end
	def board
	end
	def spots_open?
	end

end