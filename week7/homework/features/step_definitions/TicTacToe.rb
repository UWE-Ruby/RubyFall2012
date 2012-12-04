class TicTacToe
	attr_accessor :player
	attr_reader :player_symbol, :computer_symbol, :open_spots, :current_state, :board, :player_move
	attr_writer :current_player, :player_turn, :gets
	SYMBOLS = [:X, :O]

	def initialize(p=:Renee, sym=SYMBOLS.sample)
		@player = p.to_s.capitalize
		@player_symbol = sym
		if @player_symbol == :X
			@computer_symbol = :O
		else
			@computer_symbol = :X
		end

		@open_spots = [:A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3]
		@current_state = @open_spots
		@board = { 	:A1 => " ", :A2 => " ", :A3 => " ", 
					:B1 => " ", :B2 => " ", :B3 => " ", 
					:C1 => " ", :C2 => " ", :C3 => " " }
		@player_move = nil
	end
	def get_player_move(x)
		#@player_move = @board[x.to_sym]
		@player_move = x
	end
	def computer_move
		temp = @open_spots.sample
		#index = @current_state.index(temp)
		#@current_state[index] = @computer_symbol.to_s
		@current_state << @computer_symbol.to_s
		temp
	end
	def current_player
		@player
	end
	def player_turn
		@player 
	end
	def get_player_move
		@gets
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