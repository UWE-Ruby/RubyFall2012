class TicTacToe
	attr_accessor :player, :player_symbol, :conch_shell, :board

	SYMBOLS = [:X, :O]

	def initialize(turn=nil, mark=nil)
		@conch_shell = turn == :player ? :player : :computer

		@player_symbol = mark.nil? ? SYMBOLS.shuffle.first : mark

		@board = {A1: " ", A2: " ", A3: " ",
							B1: " ", B2: " ", B3: " ",
							C1: " ", C2: " ", C3: " " }
	end

	def current_player
		# The way the spec calls this is a bit confusing… 
		# The @conch_shell gets passed when a player makes their move.
		@conch_shell == :player ? @player : "Computer"
	end

	def computer_symbol
		self.player_symbol == :X ? :O : :X
	end

	def player_move

		@conch_shell = :computer
		:A1
	end

	def computer_move
		@conch_shell = :player
		%w(A1 A2 A3 B1 B2 B3 C1 C2 C3).shuffle.first
	end

	def current_state
		["X"]
	end

	def open_spots
		spots = []

		@board.each do |spot, mark|
			spots << spot.to_s if mark == " "
		end

		spots
	end

	def spots_open?
		open_spots.length == 0 ? false : true
	end

	def draw?
		self.spots_open? || self.determine_winner ? false : true
	end

	def over?
		self.player_won? || self.computer_won? || self.draw? ? true : false
	end

	def player_won?
		true if self.determine_winner && @player_symbol == self.determine_winner
	end

	def computer_won?
		true if self.determine_winner && @computer_symbol == self.determine_winner
	end

	def determine_winner
		if 		board[:A1] == :X && board[:A2] == :X && board[:A3] == :X ||
			 		board[:B1] == :X && board[:B2] == :X && board[:B3] == :X ||
			 		board[:C1] == :X && board[:C2] == :X && board[:C3] == :X ||
			 		board[:A1] == :X && board[:B1] == :X && board[:C1] == :X ||
			 		board[:A2] == :X && board[:B2] == :X && board[:C2] == :X ||
			 		board[:A3] == :X && board[:B3] == :X && board[:C3] == :X ||
			 		board[:A1] == :X && board[:B2] == :X && board[:C3] == :X ||
			 		board[:C1] == :X && board[:B2] == :X && board[:A3] == :X
			:X
		elsif board[:A1] == :O && board[:A2] == :O && board[:A3] == :O ||
					board[:B1] == :O && board[:B2] == :O && board[:B3] == :O ||
					board[:C1] == :O && board[:C2] == :O && board[:C3] == :O ||
					board[:A1] == :O && board[:B1] == :O && board[:C1] == :O ||
					board[:A2] == :O && board[:B2] == :O && board[:C2] == :O ||
					board[:A3] == :O && board[:B3] == :O && board[:C3] == :O ||
					board[:A1] == :O && board[:B2] == :O && board[:C3] == :O ||
					board[:C1] == :O && board[:B2] == :O && board[:A3] == :O
			:O
		else
			false
		end
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