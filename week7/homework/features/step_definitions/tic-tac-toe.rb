class TicTacToe
  attr_accessor :player, :player_symbol, :computer_symbol, :board, :player_won, :computer_won
  SYMBOLS = [:X, :O]
  PLAYERS = [:computer, :player]
  def initialize(first_player=nil, player_symbol=nil)
    @current_player = nil
    @players = [:player, :computer]
    @player = "Anonymous"
    @board = {
      A1: " ", A2: " ", A3: " ",
      B1: " ", B2: " ", B3: " ",
      C1: " ", C2: " ", C3: " "
    }
    if first_player != nil
      @current_player = first_player
    else
      random_first_turn
    end
    if player_symbol != nil
      @player_symbol = player_symbol
      @computer_symbol = (SYMBOLS-[@player_symbol])[0]
    else
      random_symbols
    end
  end
  def welcome_player
    "Welcome #{get_player_reference}"
  end
  def indicate_player_turn
    puts "#{get_player_reference}'s Move:"
  end
  # This method returns what we call the player.
  def get_player_reference
    if @player.nil?
      "Anonymous"
    else
      @player
    end
  end
  def random_first_turn
    @current_player = PLAYERS.shuffle[0]
  end
  def random_symbols
    shuffled_symbols = SYMBOLS.shuffle
    @player_symbol, @computer_symbol = shuffled_symbols[0], shuffled_symbols[1]
  end
  def current_player
    if @current_player == :player
      get_player_reference
    else
      "Computer"
    end
  end
  def get_player_move
    gets.chomp
  end
  def open_spots
    @board.select { |k,v| v == " "}
  end
  def computer_move
    move = open_spots.keys.sample
    next_player(:player)
    process_move(:computer, move)
  end
  def player_move
    move = 'false'
    until validate_move?(move.to_sym)
      move = get_player_move.to_sym
    end
    next_player(:computer)
    process_move(:player,move)
  end

  # This validates a move, registers it, and flips the next turn bit
  def process_move(player, move)
    return 1 unless validate_move?(move)
    @board[move] = @computer_symbol if player == :computer
    @board[move] = @player_symbol if player == :player
    move
  end
  # This checks to see if the move falls upon an open spot
  def validate_move?(move)
    return true if open_spots.include?(move)
    false
  end
  def next_player(player)
    @current_player = player
  	# @current_player = (PLAYERS - [@current_player])[0]
  end
  def current_state
    output = ''
    @board.select {|k,v| k.to_s =~ /A/}.each do |k,v|
      output << v.to_s unless v == " "
      output << " " if  v == " "
      output << " | "
    end
    output << "\n _   _   _ \n"
    @board.select {|k,v| k.to_s =~ /B/}.each do |k,v|
      output << v.to_s unless v  == " "
      output << " " if  v == " "
      output << " | "
    end
    output << "\n _   _   _ \n"
    @board.select {|k,v| k.to_s =~ /C/}.each do |k,v|
      output << v.to_s unless v  == " "
      output << " " if v  == " "
      output << " | "
    end
    output
    # @board
  end
  def determine_winner
    victory = false
    @player_won = false
    @computer_won = false
    if @board[:A1] == @board[:A2] && @board[:A2] == @board[:A3] && @board[:A1] != " "
      victory = true
      winner_symbol = @board[:A1]
    elsif @board[:B1] == @board[:B2] && @board[:B2] == @board[:B3] && @board[:B1] != " "
      victory = true
      winner_symbol = @board[:B1]
    elsif @board[:C1] == @board[:C2] && @board[:C2] == @board[:C3] && @board[:C1] != " "
      victory = true
      winner_symbol = @board[:C1]
    elsif @board[:A1] == @board[:B1] && @board[:B1] == @board[:C1] && @board[:A1] != " "
      victory = true
      winner_symbol = @board[:A1]
    elsif @board[:A2] == @board[:B2] && @board[:B2] == @board[:C2] && @board[:A2] != " "
      victory = true
      winner_symbol = @board[:A2]
    elsif @board[:A3] == @board[:B3] && @board[:B3] == @board[:C3] && @board[:A3] != " "
      victory = true
      winner_symbol = @board[:A3]
    elsif @board[:A1] == @board[:B2] && @board[:B2] == @board[:C3] && @board[:A1] != " "
      victory = true
      winner_symbol = @board[:A1]
    elsif @board[:A3] == @board[:B2] && @board[:B2] == @board[:C1] && @board[:A3] != " "
      victory = true
      winner_symbol = @board[:A3]
    elsif open_spots.empty?
      draw
    else
      victory = false
    end
    if victory == true && winner_symbol == @player_symbol
      @player_won = true
      return true
    elsif victory == true && winner_symbol == @computer_symbol
      @computer_won = true
      return true
    end
    victory
  end
  def player_won?
    return true if @player_won
    false
  end
  def computer_won?
    return true if @computer_won
    false
  end
  def spots_open?
    return true unless open_spots.empty?
    false
  end
  def over?
    return true if player_won? || computer_won? || draw?
    false
  end
  def draw
    @draw = true
  end
  def draw?
    true if @draw
  end
# class TicTacToe
# 	SYMBOLS = [:X,:O]
# 	attr_accessor :player, :board

# 	def initialize(current_player=nil,player_sym=nil)
# 		setup_board
# 		@current_player = current_player || [:computer, :player].sample
# 		choose_player_symbol(player_sym)
# 	end

# 	def computer_symbol
# 		@player_symbol[:computer]
# 	end

# 	def player_symbol
# 		@player_symbol[:player]
# 	end

# 	def current_player
# 		{:computer => "Computer", 
# 		  :player => @player}[@current_player]
# 	end

# 	def welcome_player
# 		"Welcome #{@player}"
# 	end

# 	def indicate_palyer_turn
# 		puts "#{@player}'s Move:"
# 	end

# 	def get_player_move
# 		gets.chomp
# 	end

# 	def player_move
# 		move = get_player_move.to_sym
# 		until open_spots.include?(move)
# 			move = get_player_move.to_sym
# 		end
# 		@board[move] = player_symbol
# 		@current_player = :computer
# 		move
# 	end

# 	def computer_move
# 		move = get_computer_move
# 		@board[move] = computer_symbol
# 		@current_player = :player
# 		move
# 	end

# 	def get_computer_move
# 		@board.select{|k,v| v.to_s.strip.empty?}.map{|k,v| k}.sample
# 	end

# 	def current_state
# 		row1 = "#{@board[:A1]}|#{@board[:A2]}|#{@board[:A3]}\n"
# 		row2 = "#{@board[:B1]}|#{@board[:B2]}|#{@board[:B3]}\n"
# 		row3 = "#{@board[:C1]}|#{@board[:C2]}|#{@board[:C3]}\n"
# 		row1 + "-"*row1.size+"\n"+
# 		row2 + "-"*row2.size+"\n"+
# 		row3 + "-"*row3.size+"\n"+
# 		"******"
# 	end

# 	def determine_winner
# 		p_spots = @board.select{|k,v| v==player_symbol}
# 		c_spots = @board.select{|k,v| v==computer_symbol}

# 		player_spots = p_spots.map{|k,v| {k[0].to_sym => k[1].to_i} }
# 		computer_spots = c_spots.map{|k,v| {k[0].to_sym => k[1].to_i} }
# 		@player_win = false
# 		@computer_win = false
# 		[:A, :B, :C].each do |l|
# 			return if @player_win = player_spots.map{|i| i[l]}.reject{|f| f.nil?}.sort == [1,2,3]
# 			return if @computer_win = computer_spots.map{|i| i[l]}.reject{|f| f.nil?}.sort == [1,2,3]
# 		end

# 		[1,2,3].each do |l|
# 			return if @player_win = player_spots.map{|i| i.invert[l]}.reject{|f| f.nil?}.sort == [:A,:B,:C]
# 			return if @computer_win = computer_spots.map{|i| i.invert[l]}.reject{|f| f.nil?}.sort == [:A,:B,:C]
# 		end

# 		return if @player_win = p_spots.keys.sort.reject{|r| ![:A1,:B2,:C3].include? r} == [:A1,:B2,:C3]
# 		return if @player_win = p_spots.keys.sort.reject{|r| ![:A3,:B2,:C1].include? r} == [:A3,:B2,:C1]
# 		return if @computer_win = c_spots.keys.sort.reject{|r| ![:A1,:B2,:C3].include? r} == [:A1,:B2,:C3]
# 		return if @computer_win = c_spots.keys.sort.reject{|r| ![:A3,:B2,:C1].include? r} == [:A3,:B2,:C1]
# 	end

# 	def player_won?
# 		!!@player_win
# 	end

# 	def computer_won?
# 		!!@computer_win
# 	end

# 	def draw?
# 		!player_won? && !computer_won?
# 	end

# 	def over?
# 		player_won? || computer_won? || !spots_open?
# 	end

# 	def spots_open?
# 		!open_spots.empty?
# 	end

# 	def open_spots
# 		@board.select{|k,v| v.to_s.strip.empty?}.map{|k,v| k}
# 	end

# private
# 	def setup_board
# 		@board = {:A1 => ' ', :A2 => ' ', :A3 => ' ',
# 		  :B1 => ' ', :B2 => ' ', :B3 => ' ',
# 		  :C1 => ' ', :C2 => ' ', :C3 => ' '}
# 	end

# 	def choose_player_symbol(player_sym=nil)
# 		player_sym ||= SYMBOLS.sample
# 		@player_symbol = {
# 			:computer => SYMBOLS.reject{|s| s==player_sym}.first,
# 			:player => player_sym 
# 		}
# 	end
end
