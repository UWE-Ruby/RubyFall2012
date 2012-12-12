class TicTacToe

	attr_accessor :player, :player_symbol, :computer_symbol, :current_player, :board

	SYMBOLS = [:X, :O]

  def initialize(player=nil,symbol=nil)
  	set_first player
  	set_player symbol
  	@over = false

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
		elsif player == :computer
			@current_player = "Computer"
		else
			@player = player.to_s.capitalize
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
		@current_player == "Computer" ? "Computer" : @player
	end

	def randomize
		@player = " "
		@current_player = [@player, "Computer"].sample
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
		move = get_player_move.capitalize.to_sym
		if open_spots.include? move
			@board[move] = player_symbol
			@current_player = "Computer"
			move
		else
			player_move
		end
	end

	def computer_move
		rand = open_spots.sample
		@board[rand] = computer_symbol.to_s
		@current_player = @player
		rand
	end

	def current_state
		@board.values.to_s
	end

	def board_layout
		puts "#{@board[:A1]}|#{@board[:A2]}|#{@board[:A3]}"
		puts "-+-+-"
		puts "#{@board[:B1]}|#{@board[:B2]}|#{@board[:B3]}"
		puts "-+-+-"
		puts "#{@board[:C1]}|#{@board[:C2]}|#{@board[:C3]}"
		puts "======"
	end

	def indicate_player_turn
		@current_player
	end

	def determine_winner
		@winning_moves.each_value do |v|
			player_moves.size >= 3 ? pset = check_board(player_moves,v) : pset = ["false"]
			computer_moves.size >= 3 ? cset = check_board(computer_moves,v) : cset = ["false"]
			if not pset.include? "false"
				@player_won = true
				@over = true
			elsif not cset.include? "false"
				@computer_won = true
				@over = true
			else
			end
		end
		if !spots_open?
			@draw = true
			@over = true
		end
		board_layout
	end

	def check_board(moves,set)
		truth = []
		moves.each do |m|
			if set.include? m
				truth << "true"
			else
				truth << "false"
			end
		end
		truth
	end

	def player_moves
		@board.select { |k,v| v == player_symbol }.keys.sort
	end

	def computer_moves
		@board.select { |k,v| v == computer_symbol }.keys.sort
	end

end
