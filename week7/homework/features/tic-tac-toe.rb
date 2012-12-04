class TicTacToe

	attr_accessor :player, :computer, :player_symbol, :computer_symbol, :get_player_move, :X, :O
	TicTacToe = [:X,:O]

	def initialize(starter=nil, symbol=nil)
		@starter = starter
		@symbol = symbol

		if @starter == "Computer"
			@computer_symbol = symbol
		else
			@player_symbol = symbol
		end

		@board = {
      			:A1 => '', :A2 => '', :A3 => '',
      			:B1 => '', :B2 => '', :B3 => '',
      			:C1 => '', :C2 => '', :C3 => ''
    	}
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def current_player
		if @symbol.nil?
			@player_symbol = :X
			@computer_symbol = :O
			@current_player = [@player, @computer].sample
		else
			@current_player = @starter
		end
		@current_player
	end

	def indicate_player_turn
		puts "#{@current_player}'s Move:"
		@indicate_player_turn = @current_player
	end

	def indicate_player_move
		@indicate_player_move
	end

	def should_receive(move)
		@move = move
	end

	def computer_move
	end

	def player_move
	end

	def current_state
	end
	
	def board(get_player_move)
		@board = board[get_player_move] 
	end

	def determine_winner
	end

	def open_spots
	end

	def draw
	end

	def with(with)
		@with = with
	end

	def player_won
	end

	def computer_won
	end

	def over
	end

end