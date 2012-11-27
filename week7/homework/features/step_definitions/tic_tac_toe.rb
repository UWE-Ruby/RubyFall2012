class TicTacToe
	def player=(name)
		@player = name
	end

	def welcome_player
		return "Welcome #{@player}"
	end

	def current_player
		r = Random.rand(2).floor
		if r >= 1 then return @player
		else return "Computer" end
	end

	def initialize(name)
		player=(name)
		
	end

end