class TicTacToe
	attr_accessor :player, :current_player, :player_turn
	attr_reader :player_symbol, :computer_symbol
	SYMBOLS = [:X, :O]

	def initialize(p=:Renee)
		@player = p
		@player_symbol = SYMBOLS.sample
		if @player_symbol == :X
			@computer_symbol = :O
		else
			@computer_symbol = :X
		end
		@current_player = p
		@player_turn = p
	end
	def welcome_player
		"Welcome #{@player}"
	end
	def indicate_player_turn
		@player_turn
	end
end

t = TicTacToe.new
puts t.player.to_s
puts t.indicate_player_turn