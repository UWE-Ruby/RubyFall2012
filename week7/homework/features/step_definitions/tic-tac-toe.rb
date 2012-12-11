class TicTacToe

	attr_accessor :player, :player_symbol

	SYMBOLS = [:X, :O]

  def initialize(player="Renee",symbol=:X)
		@player ||= player
	end

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

	def welcome_player
		current_player
		"Welcome #{@player}"
	end

	def current_player
		@current = [@player, "Computer"].sample
	end

	def player_symbol
		return :X if @current == @player
		return :O if @current == :computer
	end

	def computer_symbol
		player_symbol == :X ? :O : :X
	end

	def get_player_move
		gets.chomp
	end

	def open_spots
		@board.reject { |k,v| v != " " }.keys
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
