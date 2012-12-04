class TicTacToe
  attr_accessor :player, :player_symbol, :winner
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
    #TODO output board and game status
  end

  def player_move
    get_player_move
  end

  def get_player_move
    @player_move = gets()
  end

  def computer_move
    #TODO have computer select random open spot
  end

  def determine_winner
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