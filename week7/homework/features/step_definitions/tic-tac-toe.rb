class TicTacToe

	attr_reader :player, :welcome_player, :current_player, :player_symbol, :computer_symbol, :board, :player_won, :computer_won

#@game = TicTacToe.new
#puts @game.welcome_player

#until @game.over?
#	case @game.current_player
#	when "Computer"
#		@game.computer_move
#	when @game.player
#		@game.indicate_player_turn
#		@game.player_move
#	end
#	puts @game.current_state
#	@game.determine_winner
#end

#puts "You Won!" if @game.player_won?
#puts "I Won!" if @game.computer_won?
#puts "DRAW!" if @game.draw?

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

		# Set initial state
		@board = {
			:A1 => "", :A2 => "", :A3 => "",
			:B1 => "", :B2 => "", :B3 => "",
			:C1 => "", :C2 => "", :C3 => ""
		}
		@player_won = false
		@computer_won = false

	end


	def current_state
		puts @board.to_s
	end


	def spots_open?
		
	end


	def over?
    	if @player_won || @computer_won || @draw
    		true
    	else
    		false
    	end
  	end


	def draw?
	
	end


	def open_spots

	end


	def computer_move
	
	end


	def player_move
	
	end


	def get_player_move
	
	end


	def indicate_player_turn
	
	end


	def determine_winner
	
	end


#When /^I enter my name (\w+)$/ do |name|
#  @game.player = name
#end

#Then /^the computer welcomes me to the game with "(.*?)"$/ do |arg1|
#  @game.welcome_player.should eq arg1
#end

#Then /^randomly chooses who goes first$/ do
#  [@game.player, "Computer"].should include @game.current_player
#end

#Then /^who is X and who is O$/ do
#  TicTacToe::SYMBOLS.should include @game.player_symbol, @game.computer_symbol
#end

end