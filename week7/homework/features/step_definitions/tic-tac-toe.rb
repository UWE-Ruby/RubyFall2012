class TicTacToe
	attr_accessor :player, :current_player

	SYMBOLS = [:X, :O] 

	def initialize(player=nil, symbol=nil)
		# if player == :computer
		# 	@current_player = "Computer"
		# else
		# 	@player = player
		# end

		@current_player = player
		if @current_player == :computer
			@computer_symbol = symbol
			@computer_symbol == :X ? @player_symbol = :O : @player_symbol = :X
		else
			@current_player = player
			@player_symbol == symbol 
			self.computer_symbol
		end
	end
	def welcome_player
		"Welcome #@player"
	end
	def current_player
		if @current_player == nil 
			@current_player = [self.player, "Computer"].sample
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
	end
	def computer_move
	end
	def current_state
	end
	def player_move
	end
	def determine_winner
	end
	def board
		{
			:A1 => :X, :A2 => :O, :A3 => :X,
			:B1 => :X, :B2 => :O, :B3 => :X,
			:C1 => :O, :C2 => :X, :C3 => :O
		}
	end
	def spots_open?
	end

end