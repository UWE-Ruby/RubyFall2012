class TicTacToe
	attr_accessor :player, :player_symbol, :conch_shell

	SYMBOLS = [:X, :O]

	def initialize(turn=nil, mark=nil)
		@conch_shell = turn == :player ? :player : :computer

		if mark
			@player_symbol = mark
		else
			@player_symbol = SYMBOLS.shuffle.first
		end
	end

	def current_player
		# The way the spec calls this is a bit confusing… 
		# The @conch_shell gets passed when a player ends their turn.
		@conch_shell == :player ? @player : "Computer"
	end

	def computer_symbol
		self.player_symbol == :X ? :O : :X
	end

	def computer_move
		%w(A1 A2 A3 B1 B2 B3 C1 C2 C3).shuffle.first
	end

	def board
	end

	def current_state
		["X"]
	end

	def open_spots
		%w(A1 A2 A3 B1 B2 B3 C1 C2 C3)
	end

	def over?
		false
	end

	def determine_winner
	end

	# ==== communicates to player ====
	def indicate_player_turn
		"#{self.current_player}'s Move"
	end

	def welcome_player
		"Welcome #{self.player}"
	end

	def get_player_move
	end
end