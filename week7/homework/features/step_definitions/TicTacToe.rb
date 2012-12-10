class TicTacToe
	attr_accessor :board, :draw
	attr_reader :player, :player_symbol, :player_won
	attr_reader :computer_symbol
	attr_reader :current_player, :open_spots, :over
	attr_writer :computer_move
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
		@board = { 	:A1 => ' ', :A2 => ' ', :A3 => ' ', 
					:B1 => ' ', :B2 => ' ', :B3 => ' ', 
					:C1 => ' ', :C2 => ' ', :C3 => ' ' }
		@player_move = nil
		@over = false
	end
	def method_missing(method, *args, &block)
		if method.to_s.end_with? '?'
			self.send(method.to_s.chomp.gsub('?', '').to_sym, *args, &block)
		else
			super
		end
	end
	def current_state
		@board.values
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
		@board[temp] = @computer_symbol.to_s
		@open_spots -= [@temp] 
		temp
	end
	def player_turn####
		@current_player == @player 
	end
	def get_player_move
		# begin 
		# 	@player_move = gets.chomp
		# end while @board[@player_move.to_sym] != ' '
		@player_move = gets.chomp
		@player_move

		# if @open_spots.include? @player_move
		# 	@player_move
		# else
		# 	#@player_move = self.get_player_move
		# end

		# while (@open_spots.include?(@player_move.to_sym) == false)	
		# 	begin
		# 		@player_move = gets.chomp #bad input??
		# 		unless @open_spots.include? @player_move
		# 			raise ArgumentError.new
		# 		end
		# 	rescue ArgumentError
		# 		next
		# 	else
		# 		@open_spots -= [@player_move.to_sym]
		# 		@current_state += [@player_symbol.to_s]
		# 		#@player_move.to_sym
		# 		@player_move #necessary?
		# 	end
		# end
	end
	def player_move
		@current_player = 'Computer'
		
		if @player_move == nil
		 	@player_move = self.get_player_move
		end
		if @board[@player_move.to_sym] != ' '
			@player_move = self.get_player_move
		end

		# begin 
		# 	unless @open_spots.include? @player_move.to_sym
		# 		@player_move = self.get_player_move
		# 	end
		# end while ((@open_spots.include? @player_move) == false)

		@open_spots -= [@player_move.to_sym]
		@board[@player_move.to_sym] = @player_symbol.to_s
		@player_move = @player_move.to_sym
	end
	def welcome_player
		"Welcome #{@player}"
	end
	def indicate_player_turn
		@player_turn#########
	end
end

# g = TicTacToe.new
# g.computer_move=('A1')
# puts g.get_player_move
# #g.player_move=('A1')
