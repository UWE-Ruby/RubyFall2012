class TicTacToe
	attr_accessor :player, :board
	attr_reader :player_symbol, :computer_symbol, :current_player, :next_player, :over
	SYMBOLS = [:X, :O]
	def initialize(first_player=nil,player_symbol=nil)
		@board = {
			A1: nil, A2: nil, A3: nil,
			B1: nil, B2: nil, B3: nil,
			C1: nil, C2: nil, C3: nil
		}
		if first_player.nil?
			random_start
		else
			set_first_player(first_player)
		end
		if player_symbol.nil?
			random_symbol
		else
			# set_symbol(@current_player,first_player_symbol)
			@player_symbol = player_symbol
			@computer_symbol = (SYMBOLS - [@player_symbol])[0]
		end
	end
	def player=(player)
		@player = player
	end
	def random_symbol
		if rand(0..1).zero?
			@player_symbol = SYMBOLS[0]
			@computer_symbol = SYMBOLS[1]
		else
			@player_symbol = SYMBOLS[1]
			@computer_symbol = SYMBOLS[0]
		end
	end
	def random_start
		if rand(0..1).zero?
			set_first_player(:player)
		else
			set_first_player(:computer)
		end
	end
	def welcome_player
		if @player.nil?
			"Welcome Anonymous Player"
		else
		"Welcome #{@player}"
	end
	end

	def over?
	end
	def current_player
		if @current_player == :computer
		"Computer"
	elsif @player != nil
		@player
	else
		"Player"
	end
	end
	def next_turn
		@current_player = :computer if @current_player == :player
		@current_player = :player if current_player == :computer
	end
	def set_first_player(p)
		@current_player = p
	end
	def set_symbol(p,s)
		#set_ionstance_method("@#{p}")
	end
	def indicate_player_turn
		if current_player == :computer
			"Computer's Move:"
		elsif player != nil
			"#{player}'s Move:"
		else
			"Your Move:"
		end
	end
	def get_player_move
		move = gets.chomp
		@board[move] = @player_symbol
	end
	def open_spots
		@board.select { |k,v| v.nil?}
	end
	def computer_move
		computer_square = open_spots.keys.sample
		@board[computer_square] = @computer_symbol
		computer_square
	end
	def current_state
		output = ''
		@board.select {|k,v| k.to_s =~ /A/}.each do |k,v|
			output << v.to_s unless v.nil?
			output << " " if v.nil?
			output << " | "
		end
		output << "\n _   _   _ \n"
		@board.select {|k,v| k.to_s =~ /B/}.each do |k,v|
			output << v.to_s unless v.nil?
			output << " " if v.nil?
			output << " | "
		end
		output << "\n _   _   _ \n"
		@board.select {|k,v| k.to_s =~ /C/}.each do |k,v|
			output << v.to_s unless v.nil?
			output << " " if v.nil?
			output << " | "
		end
		output
end
end