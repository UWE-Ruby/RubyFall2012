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
		@player_move = :A1 ##test
	end
	def determine_winner
		letters = ['A', 'B', 'C']
		nums = [1, 2, 3]

		letters.each do |letter|
			if @board[(letter+1).to_sym] == @board[(letter+2).to_sym] && @board[(letter+2).to_sym] == @board[(letter+3).to_sym] 
				win = @board[letter+1]
		end

		if win == nil
			nums.each do |nums|
				
			end
		end
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
		@player_move = @gets
		@player_move #necessary?
	end
	def player_move
		@current_state << @player_symbol.to_s
		@player_move
	end
	def welcome_player
		"Welcome #{@player}"
	end
	def indicate_player_turn
		@player_turn
	end
end