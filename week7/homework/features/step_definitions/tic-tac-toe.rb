class TicTacToe
  attr_reader :player
  attr_reader :current_player
  attr_reader :player_symbol
  attr_reader :computer_symbol
  
  SYMBOLS = ["X","O"]
  def player=player
    @player=player #set the player name
    @current_player = [@player, "Computer"][rand(2)] #decide who goes first
    puts @current_player #show the player name
    op = {0=>1,1=>0} #define a hash that treats 1 and zero as opposites
    n = rand(2)
    @player_symbol = SYMBOLS[n]
    n = op[n]
    @computer_symbol = SYMBOLS[n]
    
  end
  
  def welcome_player
    #welcome the player
    "Welcome #{@player}"
  end

end
