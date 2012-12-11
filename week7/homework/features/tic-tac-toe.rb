class TicTacToe

	attr_accessor :player, :computer, :player_symbol, :computer_symbol, :board
	SYMBOLS = [:X,:O]

	def initialize(starter=nil, symbol=nil)
		@starter = starter
		@symbol = symbol

		unless @symbol.nil?
			if @starter == "Computer"
				@computer_symbol = @symbol
				@player_symbol = :O
				@computer = "Computer"
			else
				@player_symbol = @symbol
				@computer_symbol = :O
				@player = @starter
			end
		end

		#current_player

		@board = {
				:A1 => " ", :A2 => " ", :A3 => " ",
      			:B1 => " ", :B2 => " ", :B3 => " ",
      			:C1 => " ", :C2 => " ", :C3 => " "
		}
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def current_player
		if @symbol.nil?
			@player_symbol = :X
			@computer_symbol = :O
			@current_player = [@player, "Computer"].sample
		else
			@current_player = @starter
			if @player_symbol == :X then @computer_symbol = :Y else @computer_symbol = :X end
			if @computer_symbol == :X then @player_symbol = :Y else @player_symbol = :X end	
		end
		@current_player
	end

	def get_player_move
		#@current_player = (@current_player == SYMBOL::X) ? SYMBOL::O : SYMBOL::X
		@get_player_move = gets.chomp
	end

	def indicate_player_turn
		puts "#{@current_player}'s Move:"
		@indicate_player_turn = @current_player
	end

	def indicate_player_move
		@indicate_player_move
	end

	def computer_move
		@computer_move =@open_spots.sample

	end

	def player_move
		board[get_player_move] = @player_symbol
		@player_move = get_player_move.to_sym
	end

	def current_state
		@current_state = @board.values.to_s
	end

	def determine_winner
		i = 0
		winning_combos = []
		@winning_combos = [
  			[:A1,:A2,:A3],
			[:B1,:B2,:B3],
			[:C1,:C2,:C3],
			[:A1,:B1,:C1],
			[:A2,:B2,:C2],
			[:A3,:B3,:C3],
			[:A1,:B2,:C3],
			[:C1,:B2,:A3]
		]

		while i < 8 do
			unless winning_combos[i].unique.length != 1
				if winning_combos[i].includes "X" && player_symbol = "X"
					player_won?
				elsif winning_combos[i].includes "Y" && player_symbol = "Y"
					player_won?
				elsif winning_combos[i].includes "X" && computer_symbol = "X"	
					computer_won?
				elsif winning_combos[i].includes "Y" && computer_symbol = "Y"	
					computer_won?
				else
				end		
			end

			if spots_open? == false
				draw?
			else
				if @current_player == "Computer"
					@current_player = @player
				else
					current_player = "Computer"
				end
			end
		end
	end

	def open_spots
		@open_spots = board.delete_if{|k,v| {} == v.delete_if{|a,b| b==""}}	
	end

	def spots_open?
		if @board.values.include?(" ") then true else false end
	end

	def draw?
		
		@draw = false
		
		unless @spots_open == false
			@draw = true
		end
	end

	def player_won?
		@player_won == true
	end

	def computer_won?
		@computer_won == true
	end

	def over?
		if @computer_won == true
			@over = true
		elsif @player_won == true
			@over = true
		elsif @draw == true
			@over = true
		else
			@over = false 
		end
	end
end