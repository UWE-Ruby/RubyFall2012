class Player

  attr_accessor :name, :symbol

end


class TicTacToe

  SYMBOLS = ["X", "O"]

  def initialize(first_player = nil, first_symbol = nil)
    @computer_player = Player.new
    @computer_player.name = "Computer"

    @human_player = Player.new

    @players = {:player => @human_player, :computer => @computer_player}

    # player_order is an array like [:player, :computer]
    if first_player
      @player_order = []
      player_names = @players.keys

      @player_order << player_names.delete(first_player)
      @player_order << player_names[0]
    else
      @player_order = @players.keys.shuffle
    end

    symbols = SYMBOLS.dup.shuffle

    if first_symbol
      @players[first_player].symbol = symbols.delete
    end

    @players.values.select { |player| !player.symbol }.each_with_index do |player, index|
      player.symbol = symbols[index]
    end

    @current_player_index = 0
  end

  def player=(name)
    @human_player.name = name
  end

  def player
    @human_player.name
  end

  def player_symbol
    @human_player.symbol
  end

  def computer_symbol
    @computer_player.symbol
  end

  def welcome_player 
    "Welcome #{@human_player.name}"
  end

  def current_player
    key = @player_order[@current_player_index]
    @players[key]
  end
end