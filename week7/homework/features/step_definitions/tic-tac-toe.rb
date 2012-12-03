class TicTacToe
  def initialize(*start_player)
    @start_player = start_player
  end

  SYMBOLS = ["X", "O"]
  # SYMBOLS = [@player_symbol, @computer_symbol]

  attr_accessor :player, :player_symbol, :computer_symbol, :current_player

  def player=(player)
    @player = player
  end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    @a_player = [@player, "Computer"]
    return @current_player = @a_player.sample
  end

  def symbols
    @player_symbol = SYMBOLS[rand]

    if @player_symbol == "X"
      @computer_symbol = "O"
    else
      @computer_symbol = "X"
    end

    # @player_symbol = SYMBOLS[0]
    # @computer_symbol = SYMBOLS[1]

    # @player_symbol = "O"
    # @computer_symbol = "X"
  end

  def indicate_player_turn
    "#{@current_player}'s Move:"
  end

  def get_player_move
    # @move = move
  end


end




# lines edited in steps file: 38, 46, 80, 84