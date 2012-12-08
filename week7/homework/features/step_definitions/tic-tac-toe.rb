class TicTacToe
  attr_reader :open_spots
  attr_accessor :board

  SYMBOLS = [:X,:O]
  
  def initialize(first_player = nil, player_symbol = nil)
    #expecting :player or :computer for first_player this is used to force the context for testing
    @player_hash = {:player=>nil,:computer => "Computer"}
    first_player==nil ? randomize_first_player : @current_player = first_player
    @symbol_hash = {:player=> nil, :computer=>nil}
    assign_symbols(player_symbol)
    #define all the open spots. they're all open to begin with
    @open_spots = [:A1,:A2,:A3,:B1,:B2,:B3, :C1,:C2,:C3]
    @board = {}
    @open_spots.each {|spot| @board[spot]=" "} #set up the current state with all spots empty
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
  
	#practicing some meta programming
  [:player, :computer].each do |s|
    define_method("#{s}_symbol") do
      @symbol_hash[s]
    end
  end
  
  def assign_symbols(player_symbol = nil)
    op = {0=>1,1=>0,:player=>:computer, :computer=>:player, :X=>:O, :O=>:X} #a hash that defines opposites
    @symbol_hash[:player] = player_symbol
    @symbol_hash[:player] ||= SYMBOLS[rand(2)].to_sym
    @symbol_hash[:computer] = op[@symbol_hash[:player]]# op[@symbol_hash[:player]]
  end
  
  def randomize_first_player
    @current_player = [:player, :computer][rand(2)] #decide who goes first
  end
  
  def welcome_player
    #welcome the player
    "Welcome #{@player_hash[:player]}"
  end

  def play_game #structure of the game
    indicate_palyer_turn
    get_player_move
  end
  
  def indicate_palyer_turn
    puts "#{@player_hash[@current_player]}'s Move:"
  end
  
  def get_player_move(move = ARGV)
    move
  end
  
  def computer_move
    move = @open_spots.slice(rand(@open_spots.length))
    @board[move]=@symbol_hash[:computer].to_s
    return move
  end
  
  def player_move
    move = get_player_move.to_sym
    if board[move] == ' '
      #the space is available, put the player's symbol there
      @board[move] = @symbol_hash[:player].to_s
      return move
    else
      #the spot is not available, ask again for a move
      new_move = player_move
      return new_move
    end
  end
  
  def current_state
    @board.values
  end
  
  def winner?(side, trio)
    #take a symbol(player or computer) and a trio of contiguous board positions as input and determine whether that side has one on
    #those three positions
    trio.all? {|y| @board[y]==@symbol_hash[side]} #check to see if all three symbols match symbol
  end
  
  def determine_winner
    winning_combinations = [[:A1,:A2,:A3],[:B1,:B2,:B3],[:C1,:C2,:C3],[:A1,:B1,:C1],[:A2,:B2,:C2],[:A3,:B3,:C3],[:A1,:B2,:C3],[:C1,:B2,:A3]]
    winning_combinations.each do |trio|
      if winner?(:player,trio)  
        #the player has won
          @player_won = true
          @game_over = true
          break
      elsif winner?(:computer,trio)
        #the computer has won
        @computer_won = true
        @game_over = true
        break
      else
        @game_over = false
      end
      #check for a draw
      if !spots_open?
        #no spots are open but there was no winner so it's a draw
        @draw=true
        @game_over = true
      else
        @draw=false
        @game_over = false
      end
    end
  end
  
  def spots_open?
    @board.include?(' ')
  end
  
  def player_won?
    @player_won
  end
  
  def computer_won?
    @computer_won
  end
  
  def over?
    @game_over
  end
  
  def draw?
    @draw
  end
end


