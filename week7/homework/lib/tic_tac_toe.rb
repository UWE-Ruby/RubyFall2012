class TicTacToe

  attr_accessor :player

  def initialize
    @players = ["Computer", @player]
    @player_index = rand(2)
  end

  def welcome_player 
    "Welcome #{player}"
  end

  def current_player
    @players[@player_index]
  end



end