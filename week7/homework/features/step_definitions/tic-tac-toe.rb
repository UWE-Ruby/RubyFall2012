class TicTacToe
  # initialization
  attr_reader :player, :player_symbol, :computer_symbol #get in Java - don't have to correspond to the args!
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
      return @player
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
    whose = current_player()
    puts "#{whose}'s Move:"
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

  def open_spots
    return @board.find_all { |m| m[1] == " " }.map { |f| f[0] }
  end

  def spots_open?
    # no need to declare/assign as we're not doing anything with the variables, just call the method
    # returns true is >0 spots open
    return open_spots().count > 0
  end

  def determine_winner
    #How do you figure out of there are 3 in a row?
    # you look at each value in the possibilities for  3 in a row, if they are the same symbol then voila
    #A1 A2 A3 x
    #B1 B2 B3 x
    #C1 C2 C3 x
    #A1 B1 C1 x
    #A2 B2 C2 x
    #A3 B3 C3 x
    #A1 B2 C3 x
    #A3 B2 C1 x

    if @board[:A1] != " " && @board[:A1] == @board[:A2] && @board[:A2] == @board[:A3]
      @winner_is = @board[:A1]
    elsif @board[:B1] != " " && @board[:B1] == @board[:B2] && @board[:B2] == @board[:B3]
      @winner_is = @board[:B1]
    elsif @board[:C1] != " " && @board[:C1] == @board[:C2] && @board[:C2] == @board[:C3]
      @winner_is = @board[:C1]
    elsif @board[:A1] != " " && @board[:A1] == @board[:B1] && @board[:B1] == @board[:C1]
      @winner_is = @board[:A1]
    elsif @board[:A2] != " " && @board[:A2] == @board[:B2] && @board[:B2] == @board[:C2]
      @winner_is = @board[:A2]
    elsif @board[:A3] != " " && @board[:A3] == @board[:B3] && @board[:B3] == @board[:C3]
      @winner_is = @board[:A3]
    elsif @board[:A1] != " " && @board[:A1] == @board[:B2] && @board[:B2] == @board[:C3]
      @winner_is = @board[:A1]
    elsif @board[:A3] != " " && @board[:A3] == @board[:B2] && @board[:B2] == @board[:C1]
      @winner_is = @board[:A3]
    end
  end

  def player_won?
    # you have to know if :O or :X is for the player
    return @player_symbol == @winner_is
  end

  def draw?
    return @winner_is == nil && spots_open? == false
  end

  def over?
    # either there is a winner or its a draw
    return @winner_is != nil || draw? == true
  end

  def current_state
    #oreturn f the board
    return @board.values.map { |f| f.to_s }
  end
end