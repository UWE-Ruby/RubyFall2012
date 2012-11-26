class TicTacToe
	attr_accessor :player, :current

	def initialize(turn)
		@current = turn == :player ? :player :computer
	end

	def current_player
		@current == :player ? @player : "Computer"
	end

	def indicate_player_turn
		"#{self.current_player}'s Move"
	end

	def get_player_move
	end
end