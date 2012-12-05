class TicTacToe
	attr_accessor :player, :turncounter, :player_symbol, :computer_symbol, :board, :player_move 

	SYMBOLS = [:X, :O]

	def initialize(player = :computer, symbol = :X)
		if player == :computer 
			@player = "Computer"
			@computer_symbol = symbol
			@player_symbol = TicTacToe::SYMBOLS.select{ |x| x == symbol}.first 
		else
			@player = player
			@player_symbol = symbol
			@computer_symbol = TicTacToe::SYMBOLS.select{ |x| x == symbol}.first 
		end

		@board = {A1:'', A2:'', A3:'', B1:'', B2:'', B3:'', C1:'', C2:'', C3:''}
		@turncounter = 0 
		
	end

	def welcome_player

		puts "You're going down, meatpuppet. Enter your name so I can mock you appropriately."
		@player = gets 
		return "Welcome #{@player}".chomp
		
	end

	def current_player 

		if @turncounter == 0
			current_player = random_player
			
		else 


		end

		@turncounter += 1 

		return current_player 
		
	end


	def random_player
		turnwookie = rand(max=1) 
		
		if turnwookie == 0 
			 this_player = @player
		else 
			this_player = "Computer"
		end 

		return this_player 
	end


	def indicate_player_turn
		puts "#{@player}'s Move:"
		get_player_move
	end


	def get_player_move
		@player_move = gets
		return @player_move
	end




end




