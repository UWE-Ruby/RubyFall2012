class TicTacToe
  attr_reader :player
  attr_reader :current_player
  attr_reader :SYMBOLS
  
  
  def player=player
    #set the player
    @player=player
    #decide who goes first
    @current_player = [@player, "Computer"][rand(2)]
    puts @current_player
  end
  
  def welcome_player
    #welcome the player
    "Welcome #{@player}"
  end

end
