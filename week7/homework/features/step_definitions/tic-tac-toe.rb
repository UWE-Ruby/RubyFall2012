class TicTacToe
	attr_accessor :player
	attr_reader :current_player
	def welcome_player
		"Welcome #@player"
	end
	def current_player
		@current_player = [self.player, "Computer"].sample
		@current_player
	end
end