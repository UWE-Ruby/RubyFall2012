class TicTacToe
	attr_accessor :player
	attr_reader :current_player

	SYMBOLS = [:X, :O] 

	def initialize(player="player", symbols=:X)
		if player == :computer
			@current_player = "Computer"
			@player = "player"
		else
			@player = player
		end
	end
	def welcome_player
		"Welcome #@player"
	end
	def current_player
		@current_player = [self.player, "Computer"].sample
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
end