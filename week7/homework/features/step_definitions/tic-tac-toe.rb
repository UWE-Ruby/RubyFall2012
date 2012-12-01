class TicTacToe
  attr_accessor :player

  def initialize
    @new_game = true
  end

  def welcome_player
    "Welcome #{player}"
  end

  def current_player
    if @new_game
      @new_game = false
      return [player, "Computer"].sample
    end
  end
end
