class TicTacToe
	attr_accessor :player, :current_player, :player_symbol, :computer_symbol
	SYMBOLS = [:X, :O]

	def welcome_player
		return "Welcome #{@player}"
	end

	def initialize(player = "Nobody")
		@player = player
	end

	def current_player
		@players ||= ["Computer", @player]
		r = Random.new
		@player_symbol = :O
		@computer_symbol = :X
		@players[r.rand(2)]
	end

	def indicate_player_turn
		puts "#{@player}'s Move:"
	end

	def get_player_move

	end

end