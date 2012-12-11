class TicTacToe

	attr_accessor :player, :player_symbol, :computer_symbol, :current_player, :board

	SYMBOLS = [:X, :O]

  def initialize(player=nil,symbol=nil)
  	set_first player
  	set_player symbol

		@board = {
	      :A1 => " ", :A2 => " ", :A3 => " ",
	      :B1 => " ", :B2 => " ", :B3 => " ",
	      :C1 => " ", :C2 => " ", :C3 => " "
	      }

		@winning_moves = {
	    1 => [:A1,:A2,:A3],
	    2 => [:B1,:B2,:B3],
	    3 => [:C1,:C2,:C3],
	    4 => [:A1,:B1,:C1],
	    5 => [:A2,:B2,:C2],
	    6 => [:A3,:B3,:C3],
	    7 => [:A1,:B2,:C3],
	    8 => [:A3,:B2,:C1]
	  }
	end

	def welcome_player
		"Welcome #{@player}"
	end

	def set_first player
		if player.nil?
			randomize
		else
			@player = player
		end
	end

  def set_player symbol
  	if symbol.nil?
  		@player_symbol = SYMBOLS.sample
  		computer_symbol
  	else
  		@player_symbol = symbol
  		computer_symbol
  	end
  end

	def current_player
		@player.to_s.capitalize
	end

	def randomize
		[@player, "Computer"].sample
	end

	def computer_symbol
		@player_symbol == :X ? :O : :X
	end

	def get_player_move
		gets.chomp
	end

	def open_spots
		@board.select { |k,v| v == " " }.keys
	end

	def spots_open?
		open_spots.count > 0
	end

	def over?
		@over
	end

	def player_won?
		@player_won
	end

	def computer_won?
		@computer_won
	end

	def draw?
		@draw
	end

	def player_move
		move = get_player_move.to_sym
		if open_spots.include? move
			@board[move] = player_symbol.to_s
			@current_player = "Computer"
			move
		else
			get_player_move.to_sym
		end
	end

	def computer_move
		rand = open_spots.sample
		@board[rand] = computer_symbol.to_s
		@current_player = @player
		rand
	end

	def current_state
		@board.values
	end

	def indicate_player_turn
		@current_player
	end

	def determine_winner
		@winning_moves.each_value do |v|
			if v === player_moves
				@player_won = true
				@over = true
			elsif v === computer_moves
				@computer_won = true
				@over = true
			else
				@draw = true
				@over = true
			end
		end
	end

	def player_moves
		@board.select { |k,v| v == player_symbol }.keys.sort
	end

	def computer_moves
		@board.select { |k,v| v == computer_symbol }.keys.sort
	end

end
