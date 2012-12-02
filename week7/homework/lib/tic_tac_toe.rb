class Player

  attr_accessor :name, :symbol

end



class TicTacToe

  SYMBOLS = ["X", "O"]

  def initialize
    @computer_player = Player.new
    @computer_player.name = "Computer"

    @human_player = Player.new

    @players = [@computer_player, @human_player].shuffle

    @players.each_with_index do |player, index|
      player.symbol = SYMBOLS[index]
    end

    @current_player_index = 0
  end

  def player=(name)
    @human_player.name = name
  end

  def player
    @human_player.name
  end


  def welcome_player 
    "Welcome #{@human_player.name}"
  end

  def current_player
    @players[@current_player_index]
  end

end