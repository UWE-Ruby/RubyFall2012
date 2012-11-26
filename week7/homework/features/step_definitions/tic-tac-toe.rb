class TicTacToe
	attr_accessor :player, :current_player, :board, :player_symbol, :computer_symbol

	SYMBOLS = [:X, :O]

	def initialize(turn=nil, mark=nil)
		@current_player = turn.nil? ? [:player, :computer].shuffle.first : turn
		@mark = SYMBOLS.shuffle.first if mark.nil?
	end

	def welcome_player
		"Welcome #{self.player}"
	end

	def indicate_player_turn
	end

	def get_player_move
	end

	def player_symbol
	end
end