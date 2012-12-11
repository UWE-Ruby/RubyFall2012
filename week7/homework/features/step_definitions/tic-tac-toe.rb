class TicTacToe

	attr_accessor :player, :player_symbol, :current_player

	SYMBOLS = [:X, :O]

  def initialize(player="",symbol=:X)

		@board = {
	      :A1 => " ", :A2 => " ", :A3 => " ",
	      :B1 => " ", :B2 => " ", :B3 => " ",
	      :C1 => " ", :C2 => " ", :C3 => " "
	      }

		@winning_moves = {
	    1 => ['A1','A2','A3'],
	    2 => ['B1','B2','B3'],
	    3 => ['C1','C2','C3'],
	    4 => ['A1','B1','C1'],
	    5 => ['A2','B2','C2'],
	    6 => ['A3','B3','C3'],
	    7 => ['A1','B2','C3'],
	    8 => ['C1','B2','A3']
	  }
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def current_player
		puts @player
		@player.to_s.capitalize
	end

	def randomize
		[@player, "Computer"].sample
	end

	def player_symbol
		return :X if @current_player == @player
		return :O if @current_player != @player
	end

	def computer_symbol
		@player_symbol == :X ? :O : :X
	end

	def get_player_move
		gets.chomp
	end

	def open_spots
		@board.select { |k,v| v == " " }.keys
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
		get_player_move
		@current_player = "Computer"
	end

	def computer_move
		rand = open_spots.sample
		@board[rand] = computer_symbol.to_s
		@current_player = @player
		rand
	end

	def indicate_player_turn
	end

	def current_state
		@board.values
	end

	def determine_winner
	end

end
