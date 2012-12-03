# re-do this... a.rotate! to keep track of who is who? a.rotate![0]


class TicTacToe
  attr_accessor :player, :board, :over
  attr_reader :player_symbol, :player_entry, :player_move, :computer_symbol,  :over
  SYMBOLS = [:X, :O]
  PLAYERS = [@player, "Computer"]
  def initialize(first_player=nil,player_symbol=nil)
    @board = {
      A1: nil, A2: nil, A3: nil,
      B1: nil, B2: nil, B3: nil,
      C1: nil, C2: nil, C3: nil
    }
    if first_player.nil?
      random_start
    else
      @current_player = first_player
    end
    if player_symbol.nil?
      random_symbol
    else
      # set_symbol(@current_player,first_player_symbol)
      @player_symbol = player_symbol
      @computer_symbol = (SYMBOLS - [@player_symbol]).first
    end
    @player = "Anonymous"
  end
  def player=(player)
    @player = player
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
  def random_start
    if rand(0..1).zero?
      @current_player = :player
    else
      @current_player = :computer
    end
  end
  def welcome_player
    "Welcome #{@player}"
  end

  def over?
  	true if draw? || player_won != nil
  	false
  end
  def current_player
    if @current_player == :computer
      "Computer"
    else
      @player
    end
  end
  def next_turn
  	#@current_player = (["Computer",@player]-[@current_player])[0]
    @current_player = (PLAYERS - [@current_player])[0]
  end
  def set_first_player(p)
    @current_player = p
  end
  def set_symbol(p,s)
    #set_ionstance_method("@#{p}")
  end
  def indicate_player_turn
    if current_player == :computer
      puts "Computer's Move:"
    else
      puts "#{player}'s Move:"
    end
  end
  def get_player_move
    @player_entry = gets.chomp.to_sym
  end
  def player_move
    get_player_move
    @board[@player_entry] = @player_symbol
    next_turn
    @player_entry.to_sym
  end
  def open_spots
    @board.select { |k,v| v.nil?}
  end
  def computer_move
    computer_square = open_spots.keys.sample
    @board[computer_square.to_sym] = @computer_symbol
    #computer_square
    next_turn
    computer_square
  end
  def current_state
    output = ''
    @board.select {|k,v| k.to_s =~ /A/}.each do |k,v|
      output << v.to_s unless v.nil?
      output << " " if v.nil?
      output << " | "
    end
    output << "\n _   _   _ \n"
    @board.select {|k,v| k.to_s =~ /B/}.each do |k,v|
      output << v.to_s unless v.nil?
      output << " " if v.nil?
      output << " | "
    end
    output << "\n _   _   _ \n"
    @board.select {|k,v| k.to_s =~ /C/}.each do |k,v|
      output << v.to_s unless v.nil?
      output << " " if v.nil?
      output << " | "
    end
    output
  end
  def determine_winner
    @over = 1
  end
  def validate_move?
  	# Check to see if a player move is valid...
  end
  def spots_open?
  	if @board.select {|k,v| v.nil?}.empty?
  		false
  	else
  		true
  	end
  end
  def draw?
  	true if spots_open? == false
  end
  def player_won
  end
end
