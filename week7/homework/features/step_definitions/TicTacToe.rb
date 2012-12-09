class TicTacToe
	attr_accessor :board, :draw
	attr_reader :player_symbol, :computer_symbol, :open_spots, :player
	attr_reader :current_state, :over, :player_won, :current_player
	attr_writer :player_move
	SYMBOLS = [:X, :O]

	def initialize(p=:Renee, sym=SYMBOLS.sample)
		@player = @current_player = p.to_s.capitalize
		@player_symbol = sym
		if @player_symbol == :X
			@computer_symbol = :O
		else
			@computer_symbol = :X
		end

		@open_spots = [:A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3]
		#@current_state = @open_spots
		@current_state = []
		@board = { 	:A1 => ' ', :A2 => ' ', :A3 => ' ', 
					:B1 => ' ', :B2 => ' ', :B3 => ' ', 
					:C1 => ' ', :C2 => ' ', :C3 => ' ' }
		@player_move = nil ##test
		@over = false
	end
	def method_missing(method, *args, &block)
		if method.to_s.end_with? '?'
			self.send(method.to_s.chomp.gsub('?', '').to_sym, *args, &block)
		else
			super
		end
	end
	def spots_open?
		@board.include?(' ')
	end
	def player=(p)
		@player = p.to_s.capitalize
		@current_player = @player #if @player_turn 
	end
	def determine_winner
		letters = ['A', 'B', 'C']
		nums = [1, 2, 3]
		win = nil

		letters.each do |letter|
			if @board[(letter+'1').to_sym] == @board[(letter+'2').to_sym] && @board[(letter+'2').to_sym] == @board[(letter+'3').to_sym] 
				win = @board[letter+'1']
			end
		end

		if win == nil
			nums.each do |num|
				num = num.to_s
				if @board[('A'+num).to_sym] == @board[('B'+num).to_sym] && @board[('B'+num).to_sym] == @board[('C'+num).to_sym] 
					win = @board[('A'+num).to_sym]
				end
			end
		end

		if win == nil 
			if @board[:A1] == @board[:B2] && @board[:B2] == @board[:C3]
				win = @board[:A1]
			elsif @board[:A3] == @board[:B2] && @board[:B2] == @board[:C1]
				win = @board[:A3]
			else
				@draw = true
			end
		end

		if @player_symbol == win
			@player_won = true 
		end

		@over = true if win || @draw
	end
	def computer_move
		@current_player = @player
		temp = @open_spots.sample
		#index = @current_state.index(temp)
		#@current_state[index] = @computer_symbol.to_s
		@current_state += [@computer_symbol.to_s]
		@open_spots -= [@temp] #this needs fixed
		temp
	end
	def player_turn####
		@current_player == @player 
	end
	def get_player_move
		@current_player = 'computer'
		@player_move = gets #bad input??
		unless @open_spots.include? @player_move
			@player_move = gets
		end
		#index = @current_state.index(@player_move)
		#@current_state[index] = @player_symbol.to_s
		@current_state += [@player_symbol.to_s]
		@open_spots -= [@player_move.to_sym]
		@player_move
	end
	def player_move
		if @player_move == nil
			@player_move = self.get_player_move
		end
		#@current_state << @player_symbol.to_s ##what does this do again?
		@player_move.to_sym
	end
	def welcome_player
		"Welcome #{@player}"
	end
	def indicate_player_turn
		@player_turn
	end
end

g = TicTacToe.new
g.player_move=('A1')
puts g.current_state