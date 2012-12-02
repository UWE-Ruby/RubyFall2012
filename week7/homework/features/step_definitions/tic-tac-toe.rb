class TicTacToe
  attr_reader :player
  attr_reader :current_player
  attr_reader :player_symbol
  attr_reader :computer_symbol
  SYMBOLS = ["X","O"]
  
  def initialize(first_player = nil, first_players_symbol = nil)
    #expecting :player or :computer for first_player this is used to force the context for testing
    @player_hash = {:computer => "Computer"}
    first_player==nil ? randomize_first_player : @current_player = first_player
    op = {0=>1,1=>0} #define a hash that treats 1 and zero as opposites
    n = rand(2)
    @player_symbol = SYMBOLS[n]
    n = op[n]
    @computer_symbol = SYMBOLS[n]
    play_game
  end
  
  def player=player
    @player_hash[:player] = player
    puts @current_player #show the player name
  end
  
  def player
    @player_hash[:player]
  end
  
  def current_player
    @player_hash[@current_player]
  end
  
  def randomize_first_player
    @current_player = [:player, :computer][rand(2)] #decide who goes first
  end
  
  def welcome_player
    #welcome the player
    #{}"Welcome #{@player}"
    "Welcome #{@player_hash[:player]}"
  end

  def play_game #structure of the game
    indicate_player_turn
    get_player_move
  end
  
  def indicate_player_turn
    puts "#{@player_hash[@current_player]}'s Move:"
  end
  
  def get_player_move(move = ARGV)
    move
  end
end

