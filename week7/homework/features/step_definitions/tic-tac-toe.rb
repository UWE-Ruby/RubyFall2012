class TicTacToe

	attr_accessor :player, :board

	attr_reader :welcome_player, :current_player, :player_symbol, :computer_symbol

	def initialize(*args)

		# Get name of player and set welcome message
		puts "Please enter your name:"
		@player = gets
		@welcome_player = "Welcome #{player}"

		# Initialize optional argument variables for who goes first, their symbol
		first = nil
		symbol = nil
		if args.length == 1
			first = args[1]
		end
		if args.length == 2
			symbol = args[2]
		end

		# Determine whether computer or player goes first
		if first == :computer
			# Computer goes first
			@current_player = "Computer"
		elsif first == :player
			# Player goes first
			@current_player = "Player"
		else
			# Randomly choose who goes first
			@current_player = [@player, "Computer"].sample
		end

		# Set who is X and who is 0
		if symbol == :X
			# Set whoever was first to X
			if first == :computer			
				@computer_symbol = :X
				@player_symbol = :O
			else
				@computer_symbol = :O
				@player_symbol = :X
			end
		elsif symbol == :Y
			# Set whoever was first to O
			if first == :computer			
				@computer_symbol = :O
				@player_symbol = :X
			else
				@computer_symbol = :X
				@player_symbol = :O
			end
		else
			# No symbol specified so assign defaults
			@player_symbol = :X
			@computer_symbol = :O
		end

		# Create empty board
		@board = {
			:A1 => "_", :A2 => "_", :A3 => "_",
			:B1 => "_", :B2 => "_", :B3 => "_",
			:C1 => "_", :C2 => "_", :C3 => "_"
		}

	end


	def over?
		# The game is over if someone has won or it is a draw
    	if self.player_won? || self.computer_won? || self.draw?
    		true
    	else
    		false
    	end
  	end


	def current_state
		# Show board
		"A1#{@board[:A1]} A2#{@board[:A2]} A3#{@board[:A3]}\nB1#{@board[:B1]} B2#{@board[:B2]} B3#{@board[:B3]}\nC1#{@board[:C1]} C2#{@board[:C2]} C3#{@board[:C3]}"
	end


	def spots_open?
		# If the board has any underscores, there are spots open
		@board.value?("_")
	end


	def open_spots
		# Return an array containing symbols of open spots
		@board.select {|key, value| value == "_"}.keys
	end


	def indicate_player_turn
		# Alert user and show board
		puts "It is your turn. Here is the board:"
		puts self.current_state
	end


	def get_player_move
		# Prompt user for move
		puts "Please enter your move:"
		gets	
	end


	def player_move
		# Get player move
		move = self.get_player_move
		# Validate player move

		# Update board

	end


	def computer_move
		# Choose random open spot (the computer isn't very good)
		move = self.open_spots.sample
		# Update board

	end


	def determine_winner
	
	end


	def player_won?
	
	end


	def computer_won?
	
	end


	def draw?
	
	end

end