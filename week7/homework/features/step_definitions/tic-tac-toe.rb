class TicTacToe
  # initialization
  attr_reader :player, :player_symbol, :computer_symbol #get in Java - don't have to correspond to the args!
  SYMBOLS = [:X, :O]
                                                        # initialize game board hash table ()with :EMPTY so you can easily find them again
  $board = {
      :A1 => :EMPTY, :A2 => :EMPTY, :A3 => :EMPTY,
      :B1 => :EMPTY, :B2 => :EMPTY, :B3 => :EMPTY,
      :C1 => :EMPTY, :C2 => :EMPTY, :C3 => :EMPTY
  }

  def initialize(*args) # arg1 is the current player, arg2 is the human player's symbol
    # TicTacToe with no arg = randomly choose who to start & symbol but now its hardcoded
    # TicTacToe with 1 arg= whichever player is sent in is to start and use the symbol sent in
    if args.size == 0
      @current_player = :computer
      @player_symbol=:O
      @computer_symbol=:X
    elsif args.size == 1
      @current_player = args[0]
      if @current_player == :computer
        @player_symbol=:O
        @computer_symbol=:X
      else
        @player_symbol=:O
        @computer_symbol=:X
      end
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

  def get_player_move
  end

  def open_spots
    return $board.find_all { |m| m[1] == :EMPTY }.map { |f| f[0] }
  end

  def computer_move
    random_move = Random.new
    open_spots = open_spots()
    count = open_spots.count
    position = open_spots[random_move.rand(count)]
    $board[position]= @computer_symbol
    return position
    # Use position as the index to the current_state.board array and change the :EMPTY to X
  end

  def current_state
    #oreturn f the board
    return $board.values.map do |f|
      if (f == :X)
        "X"
      elsif (f == :O)
        "O"
      else
        ""
      end
    end
  end
end