class TicTacToe
	SYMBOLS = [:X, :O]
	attr_accessor :player, :board, :player_symbol, :computer_symbol, :current_player, :next_player, :over, :taken_spot, :player_move, :open_spot, :winning_move
	

	def initialize(first_player=nil,player_symbol=nil)
		@board = {
			A1: " ", A2: " ", A3: " ",
			B1: " ", B2: " ", B3: " ",
			C1: " ", C2: " ", C3: " "
		}
		if first_player.nil?
			random_start
		else
			set_first_player(first_player)
		end
		if player_symbol.nil?
			random_symbol
		else
			@player_symbol = player_symbol
			@computer_symbol = (SYMBOLS - [@player_symbol])[0]
		end
		@winning_move = {:A => [:A1,:A2,:A3], :B => [:B1,:B2,:B3], :C => [:C1,:C2,:C3],
       :D => [:A1,:B1,:C1], :E =>[:A2,:B2,:C2], :F => [:A3,:B3,:C3], :G=>[:C1, :B2, :A3],
       :H=>[:A1,:B2,:C3]}
	end

	
	def welcome_player
		"Welcome #{@player}"
	end
	
	def set_first_player(p)
		@current_player = p
	end

	def random_start
		if rand(0..1).zero?
			set_first_player(:player)
		else
			set_first_player(:computer)
		end
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
	
	
	def set_symbol(p,s)
	end
	
	def indicate_player_turn
		if current_player == :computer
			"Computer's Move:"
		else player != nil
			"#{@player}'s Move:"
		end
	end
	
	def get_player_move
		move = gets.chomp
		@board[move] = @player_symbol
	end
	
	def open_spots
		@board.select{ |k,v| v == " " }
	end
	
	def computer_move
		computer_square = open_spots.keys.sample
		@board[computer_square] = @computer_symbol.to_s
		computer_square
	end

	def player_move
		player_move = get_player_move.to_sym
		open_spots
		#player_square = player_move
		#@board[player_square] = @player_symbol
		#player_square
		if (open_spots.include?(player_move))
      		@board[player_move] = player_symbol.to_s
    	else
      		player_move = get_player_move.to_sym
    	end
    	player_move
	end

	def old_pos
		#@old_pos = @board[player_move]

		#get_player_move

		#player_square = open_spots.has_value?(" ")

		#case 
		#	when false
		#		puts "Try again, dummy."
		#	else true
		#		player_move = @board[player_symbol]
		#	end
		
		#end
		#player_square = open_spots.get_player_move.to_sym
		
		#@board[player_square] = @player_symbol
		#player_move = @board[player_square]	
	
	end
	
	def spots_open?
		#true unless open_spots.value != " " 
	end

	def indicate_player_move
		puts "#{@player}'s Move:"
	end
	
	def current_state
		@board.values
	end

	def determine_winner
    player_plays = @board.reject{|k,v| v != @player_symbol}.keys
    computer_plays = @board.reject{|k,v| v != @computer_symbol}.keys
    @winning_move.each_value{|v| 
      if v.include?(player_plays)
       player_won?
      elsif v.include?(computer_plays)
        computer_won?
      else
       draw?
      end
    }      
  end
  
  def computer_won?
    true
    over?
  end
  
  def player_won?
    true
    over?
  end
  
  def spots_open?
    open_spots
    !(open_spots.empty?)
  end
  
  def over?
    true
  end
  
  def draw?
    true
  end


end