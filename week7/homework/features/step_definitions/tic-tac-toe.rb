class TicTacToe
	attr_accessor :player, :turncounter, :player_symbol, :computer_symbol, :board, :player_move, :player1

	SYMBOLS = [:X, :O]

	def initialize(player1 = :computer, symbol = :X)
		if player1 == :computer
			@player1 = "Computer"
		else
			@player1 = player1
		end

		@player_symbol = symbol
		@computer_symbol = TicTacToe::SYMBOLS.select{ |x| x == symbol}.first
		@board = {A1:'', A2:'', A3:'', B1:'', B2:'', B3:'', C1:'', C2:'', C3:''}
		@turncounter = 0
		@current_state = @board
		@open_spots = @board.select {|k, v| v.empty?}

	end


	def welcome_player

		puts "You're going down, meatpuppet. Enter your name so I can mock you appropriately."
		@player = gets
		return "Welcome #{@player}".chomp

	end


	def current_player

		if @turncounter == 0
			current_player = random_player
			#this random_player thing isn't working. It's not returning a value.
		else

			current_player = @player1
		end

		return current_player
	end


	def random_player
		turnwookie = rand(max=1)

		if turnwookie == 0
			 return @player
		else
			return @player1
		end
	end


	def indicate_player_turn
		puts "#{@player}'s Move:"
		get_player_move
	end


	def get_player_move
		@player_move = gets
		return @player_move
	end


	def computer_move

		@turncounter += 1
	end


end




