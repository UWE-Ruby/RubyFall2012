class TicTacToe
  attr_reader :player
  attr_reader :current_player
  attr_reader :player_symbol
  attr_reader :computer_symbol
  SYMBOLS = ["X","O"]
  
  def initialize(first_player = nil, player_symbol = nil)
    #expecting :player or :computer for first_player this is used to force the context for testing
    @player_hash = {:player=>nil,:computer => "Computer"}
    first_player==nil ? randomize_first_player : @current_player = first_player
    @symbol_hash = {:player=> nil, :computer=>nil}
    assign_symbols(player_symbol)
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
  
  def player_symbol
    @symbol_hash[:player]
  end
  
  def computer_symbol
    @symbol_hash[:computer]
  end
  
  def assign_symbols(player_symbol)
    op = {0=>1,1=>0,:player=>:computer, :computer=>:player, :X=>:O, :O=>:X} #a hash that defines opposites
    if player_symbol == nil
      #randomize
      n = rand(2)
      @symbol_hash[:player] = SYMBOLS[n]
      n = op[n]
      @symbol_hash[:computer] = SYMBOLS[n]
    else
     @symbol_hash[:player]=player_symbol
     @symbol_hash[:computer] = op[player_symbol]
      #@symbol_hash[@current_player] = first_players_symbol.to_s
      #@symbol_hash[op[@current_player]] = op[first_players_symbol].to_s
      
    end
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

