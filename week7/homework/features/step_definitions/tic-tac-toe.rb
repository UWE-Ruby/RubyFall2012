class TicTacToe
  # initialization
  attr_reader :player, :player_symbol, :computer_symbol  #get in Java - don't have to correspond to the args!
  attr_accessor :board
  SYMBOLS = [:X, :O]


  def initialize(*args) # arg1 is the current player, arg2 is the human player's symbol
    # TicTacToe with no arg = randomly choose who to start & symbol but now its hardcoded
    # TicTacToe with 1 arg= whichever player is sent in is to start and use the symbol sent in
    if args.size == 0
      @current_player = :computer
      shuffled = SYMBOLS.shuffle()
      @player_symbol=shuffled[0]
      @computer_symbol=shuffled[1]
    elsif args.size == 1
      @current_player = args[0]
      shuffled = SYMBOLS.shuffle()
      @player_symbol=shuffled[0]
      @computer_symbol=shuffled[1]
    else
       @current_player = args[0]
       if args[1] == :O
         @player_symbol = :O
         @computer_symbol = :X
       else
         @player_symbol = :X
         @computer_symbol = :O
      end
    end
    # initialize game board hash table ()with :EMPTY so you can easily find them again
    @board = {
        :A1 => " ", :A2 => " ", :A3 => " ",
        :B1 => " ", :B2 => " ", :B3 => " ",
        :C1 => " ", :C2 => " ", :C3 => " "
    }
  end

  def player=(name) #set in Java
                    # equal sign means assignment, without means simple method call
    @player=name
  end

  # Stuff happens now
  def welcome_player
    return "Welcome " + @player
  end

  def current_player
    if @current_player == :player
      return "Renee"
    else
      return "Computer"
    end
  end

  def player_symbol
    return @player_symbol
  end

  def computer_symbol
    return @computer_symbol
  end

  def indicate_player_turn
  end

  def open_spots
    return @board.find_all { |m| m[1] == " " }.map { |f| f[0] }
  end
  def spots_open?
    return false
  end

  def draw?
    return true
  end
  def get_player_move
    return gets
  end

  def player_move
    position = get_player_move.to_sym
    # keep calling get_player_move if this slot is not empty call to get an empty slot
    while @board[position] != " "
       position = get_player_move.to_sym
    end
    @board[position] = @player_symbol
    return position
  end

  def computer_move
    random_move = Random.new
    open_spots = open_spots()
    count = open_spots.count
    position = open_spots[random_move.rand(count)]
    @board[position]= @computer_symbol
    return position
    # Use position as the index to the current_state.board array and change the " " to X
  end
  def determine_winner
  end
  def player_won?
    return true
  end
  def over?
    return true
  end
  def current_state
    #oreturn f the board
    return @board.values.map { |f| f.to_s }
  end
end