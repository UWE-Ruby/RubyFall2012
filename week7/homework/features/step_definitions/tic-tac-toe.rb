class TicTacToe

	attr_accessor :player, :player_symbol

	def initialize(player="Renee",symbol=:X)
		@player ||= ""
		@player_symbol = symbol
	end

	SYMBOLS = [:X, :O]

	def welcome_player
		"Welcome #{@player}"
	end

	def current_player
		[@player, "Computer"].sample
	end

	def computer_symbol
		player_symbol == :X ? :O : :X
	end

	def over?
	end

	def player_won?
	end

	def computer_won?
	end

	def draw?
	end

	def player_move
	end

	def computer_move
	end

	def indicate_player_turn

	end

	def current_state
	end

	def determine_winner
	end

end
