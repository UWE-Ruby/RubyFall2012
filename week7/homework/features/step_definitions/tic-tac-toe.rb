class TicTacToe
	attr_accessor :board
	attr_reader   :player, :current_player, :other_player, :player_symbol, :computer_symbol, :SYMBOLS, :current_state, :open_spots
	SYMBOLS = [:X,:O]

	def initialize(who_goes_first = nil,player_symbol=nil) #optional arguments: who goes first, and which symbol player has.

		process_optional_arguments(who_goes_first,player_symbol) #private method that decides who goes first and has which
																 #symbol, depending on optional arguments

		@board = { #initialize the board as empty
      :A1 => " ", :A2 => " ", :A3 => " ",
      :B1 => " ", :B2 => " ", :B3 => " ",
      :C1 => " ", :C2 => " ", :C3 => " "
    	}

    	@open_spots = [:A1,:A2,:A3,:B1,:B2,:B3,:C1,:C2,:C3]

    	@draw = false
    	@over = false
    	@player_won = false
    	@computer_won = false
	end


	def welcome_player() #shows the board and welcomes the player on game start
		return current_state,"Welcome #{@player}"
	end

	def player=(player_name)
		@player = player_name
		@current_player = @player if @current_player!="Computer" #If human was current_player, updates after name entered.
	end

	def decide_who_goes_first(first_player=nil)
		if 	first_player&&first_player.downcase == :player
			@current_player = @player #assign first move to player if specified
		elsif first_player&&first_player.downcase == :computer
			@current_player = "Computer" #assign first move to computer if specified
		else
			@current_player = (rand()>0.5) ? @player : "Computer"
		end
	end

	def randomly_assign_symbols(player_symbol=nil)
		if player_symbol
			@player_symbol = player_symbol
			@computer_symbol = SYMBOLS[SYMBOLS.index(player_symbol)-1]
		else
			@player_symbol = SYMBOLS[rand.round] #rand.round randomly returns 0 or 1, assigns symbol based on index
			@computer_symbol = SYMBOLS[SYMBOLS.index(@player_symbol)-1] #returns the other symbol
		end
	end

	def indicate_player_turn
		print "#{@current_player}'s Move:"
	end

	def get_player_move
		gets.chomp
	end

	def player_move
		update_open_spots
		move = get_player_move.upcase.to_sym #upcases it (in case entered as lower case) and makes into symbol
		validate_move(move)
	end

	def validate_move(move) #makes sure a move is valid, and if its not, asks for another one.
		if @open_spots.include?(move)
			@board[move] = @player_symbol
			move
		else
			print "Error, invalid move. Make another: "
			second_try = get_player_move.upcase.to_sym
			validate_move(second_try)
		end
	end

	def computer_move
		update_open_spots
 		#chooses an element from open_spots at random
		move = @open_spots.sample
		@board[move] = @computer_symbol
		puts "Computer's move was #{move.to_s}"
		move
	end

	def spots_open?
		!@open_spots.empty?
	end

	def draw?
		@draw
	end

	def over?
		@over
	end

	def current_state #makes a heredoc, which when called with puts, prints out the current board configuration
		<<-board
		  ===============
		1 || #{@board[:A1].to_s} | #{@board[:B1].to_s} | #{@board[:C1].to_s} ||
		2 || #{@board[:A2].to_s} | #{@board[:B2].to_s} | #{@board[:C2].to_s} ||
		3 || #{@board[:A3].to_s} | #{@board[:B3].to_s} | #{@board[:C3].to_s} ||
		  ===============
		     A   B   C
board
	end

	def determine_winner
		update_open_spots
			#there are 8 different winning configurations. For both players, check all of them
			["Player","Computer"].each do |player|
				symbol = instance_variable_get("@"+player.downcase+"_symbol") #gets the player/computer's symbol
				winning_moves = [[@board[:A1],@board[:A2],@board[:A3]], #vertical winning moves
			 				 	[@board[:B1],@board[:B2],@board[:B3]],
			 				 	[@board[:C1],@board[:C2],@board[:C3]],
			                 	[@board[:A1],@board[:B1],@board[:C1]], #horizontal winning moves
			 				 	[@board[:A2],@board[:B2],@board[:C2]],
			 				 	[@board[:A3],@board[:B3],@board[:C3]],
			 					 [@board[:A1],@board[:B2],@board[:C3]], #diagonal winning moves
			 				 	[@board[:A3],@board[:B2],@board[:C1]]]

				winning_moves.each do |move| #for each triplet of winning moves
					if move.all?{|spot| spot == symbol} #if each of the spots contains the given player's symbol
						@over = true #then the game is over
						instance_variable_set("@"+player.downcase+"_won",true) #and that player is the winner
					end
				end
			end

			#if there are no open spots (spots_open? is false), then the game is over and a draw is declared
			if spots_open? == false
				@over = true
				@draw = true
			end

		next_turn #makes it the next player's turn
	end

	def player_won?
		@player_won
	end

	def computer_won?
		@computer_won
	end

	private

	def process_optional_arguments(who_goes_first= nil,player_symbol=nil) #deals with optional arguments passed to intialize

		#as far as I can tell, optional arguments to initialize are for testing purposes to get the game into a desired
		#configuration. In order to avoid conflicts with certain 

		if who_goes_first #if a first player is specified

			if who_goes_first.downcase == :computer #if :computer is going to go first
				@player = "Human"
				decide_who_goes_first(:computer) #set first player to computer
			elsif who_goes_first.downcase == :player #if :player is going to go first
				@player = "Human" #gets overridden when player is set to Renee
				decide_who_goes_first(:player)
			end
			#if symbol was passed and its valid
			if ( player_symbol && ((player_symbol.upcase ==:X)||(player_symbol.upcase ==:O)) )
				randomly_assign_symbols(player_symbol.upcase)
			else
				#otherwise,
				randomly_assign_symbols
			end

		else #if no optional parameters are passed, then randomly assign first mover and symbols.
			@player = "Human"
			print "Please enter your name: "
			self.player = gets.chomp
			decide_who_goes_first
			randomly_assign_symbols
		end
	end

	def update_open_spots
		made_moves = @board.keys.select{|key| @board[key] != " "}
		@open_spots = @open_spots-made_moves
	end

	def next_turn
		players = [@player,"Computer"]
		@current_player = players[players.index(@current_player)-1]
		@current_player	
	end


end