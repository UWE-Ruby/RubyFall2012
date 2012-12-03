# re-do this... a.rotate! to keep track of who is who? a.rotate![0]
class TicTacToe
  attr_accessor :player
  SYMBOLS = [:X, :O]
  PLAYERS = [:player, :computer]
  @board = {
    A1: " ", A2: " ", A3: " ",
    B1: " ", B2: " ", B3: " ",
    C1: " ", C2: " ", C3: " "
  }
  def welcome_player
    "Welcome #{get_player_reference}"
  end
  # This method returns what we call the player.
  def get_player_reference
    if @player.nil?
      "Anonymous"
    else
      @player
    end
  end
end
