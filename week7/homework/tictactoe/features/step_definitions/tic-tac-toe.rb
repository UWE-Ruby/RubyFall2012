class TicTacToe
  attr_accessor :player, :player_symbol, :winner, :board
  attr_reader :over, :currentplayer, :computer_symbol

  SYMBOLS = [:O, :X]

  def initialize(currentplayer = nil, symbol = nil)
    @over = false
    @winner = :none

    if currentplayer != nil then
      @currentplayer = currentplayer
    else
      @currentplayer = (Random.new.rand(0..1) == 0 ? :player : :computer)
    end

    if symbol != nil then
      @player_symbol = symbol
      @computer_symbol = (symbol == :O ? :X : :O)
    else
      @player_symbol = SYMBOLS[0]
      @computer_symbol = SYMBOLS[1]
    end

    @board = {
        :A1 => " ", :A2 => " ", :A3 => " ",
        :B1 => " ", :B2 => " ", :B3 => " ",
        :C1 => " ", :C2 => " ", :C3 => " "
    }
  end

  def welcome_player
    "Welcome #{@player}"
  end

  def indicate_palyer_turn
    "It is Your Turn to Move"
  end

  def current_player
    @currentplayer == :computer ? "Computer" : @player
  end

  def current_state
    @board.values
  end

  def player_move
    set_position(get_player_move.to_sym, @player_symbol)
    @currentplayer = :computer
    get_player_move.to_sym
  end

  def get_player_move
    @player_move = gets()
  end

  def computer_move
    @pick = open_spots.sample()
    set_position(@pick, @computer_symbol)
    @currentplayer = :player
    @pick
  end

  def open_spots
    @board.select{|k,v| v == " "}.keys
  end

  def spots_open?
    open_spots.count() > 0
  end

  def set_position(position, symbol)
    #TODO check for a valid move
    @board[position] = symbol.to_s
  end

  def determine_winner
    @winning_symbol = nil
       #@board.select{|k,v| v!=" "}.keys.join.count("A")
    #TODO check to see if game is over and set appropriate variables
    @over = true
  end

  def over?
    @over
  end

  def player_won?
    :winner == "#{player}"
  end

  def computer_won?
    :winner == "Computer"
  end

  def draw?
    :winner == "Draw"
  end
end