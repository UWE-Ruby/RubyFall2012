class TicTacToe
  attr_accessor :player, :gameActive, :playerWon, :computerWon

  def welcome_player
    :player
  end

  def over?
    :gameActive
  end

  def player_won?
    :playerWon
  end

  def computer_won?
    :computerWon
  end

  def draw?
    :playerWon == false and :computerWon == false
  end
end