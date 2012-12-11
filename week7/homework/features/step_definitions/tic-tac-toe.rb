class TicTacToe
  SYMBOLS = [:X, :O]
  FRESH_BOARD = {
    :A1 => ' ', :A2 => ' ', :A3 => ' ',
    :B1 => ' ', :B2 => ' ', :B3 => ' ',
    :C1 => ' ', :C2 => ' ', :C3 => ' '
  }

  # Initializes game
  def initialize(player=nil, symbol=nil)
    @players = {computer: 'Computer', player: nil}

    if player
      raise ArgumentError, "starting player must be one of #{@players.keys}" unless
        @players.keys.include? player

      # Explicitly set the starting player
      @current_player_key = player
    else
      # Randomly assign a starting player
      @current_player_key = @players.keys.sample
    end

    if symbol
      raise ArgumentError, "symbol must be one of #{SYMBOLS}" unless
        SYMBOLS.include? symbol

      # Explicitly set the symbol for the player
      @player_symbol = symbol
    else
      # Randomly assign a symbol for the player
      @player_symbol = SYMBOLS.sample
    end

    # The starting player and symbol have been assigned so assign the
    # opposite symbol to the computer
    @computer_symbol = SYMBOLS.select {|value| value if value != @player_symbol }.first

    @board = FRESH_BOARD
    @winner = nil
  end

  # Player methods
  ################

  # Gets the player's name
  def player
    @players[:player]
  end

  # Sets the player
  def player=(player)
    @players[:player] = player
  end

  # Gets the computer's name
  def computer
    @players[:computer]
  end

  attr_reader :player_symbol

  # Sets the player's symbol
  def player_symbol=(symbol)
    raise ArgumentError, "player symbol must be one of #{SYMBOLS}" unless
      SYMBOLS.include? symbol
    @player_symbol = symbol
  end

  attr_reader :computer_symbol

  # Sets the computer's symbol
  def computer_symbol=(symbol)
    raise ArgumentError, "computer symbol must be one of #{SYMBOLS}" unless
      SYMBOLS.include? symbol
    @computer_symbol = symbol
  end

  # Prompts the standard input for the player's name
  def get_player_name
    puts "Enter your name:"
    name = gets.chomp
    player = name
  end

  # Outputs the welcome message to the player
  def welcome_player
    if @players[:player].nil?
      @players[:player] = get_player_name
    end
    "Welcome #{@players[:player]}"
  end

  # Gets the current player name
  def current_player
    "#{@players[@current_player_key]}"
  end

  # Gets the next player key
  def next_player_key
    @players.keys.select {|value| value if value != @current_player_key }.first
  end

  # Outputs to the user that it is the player's turn
  def indicate_player_turn
    puts "#{player}'s Move:"
  end

  # Prompts the standard input for the player's move
  def get_player_move
    move = gets.chomp.to_sym
  end

  # Does the player's move and returns the spot
  def player_move
    # Causes stack overflow due to infinite recursion on tests
    move = get_player_move.to_sym
    if open_spots.include? move
      # Enter the player's symbol into the chosen spot
      @board[move] = @player_symbol
      @current_player_key = :computer
      move
    else
      # Remove for testing
      #puts "You must enter one of the available spots: #{open_spots.map {|v| v.to_s}.join(', ') }"
      player_move
    end

    # This way won't cause stack overflow but tests are not compatible
    #until open_spots.include?(move = get_player_move.to_sym)
    #  puts "You must enter one of the available spots: #{open_spots.map {|v| v.to_s}.join(', ') }"
    #end
    #@board[move] = @player_symbol
    #@current_player_key = :computer
    #move
  end

  # Does the computer's move and returns the spot
  def computer_move
    puts "Computer's Move:"

    # Randomly choose an open board spot and enter the computer's symbol
    move = open_spots.sample
    @board[move] = @computer_symbol
    @current_player_key = :player
    move
  end

  # Game-state methods
  ####################

  # Determines the winner of the game and sets the winner
  def determine_winner
    winning_symbol = nil

    # For each symbol
    SYMBOLS.each do |symbol|
      # Find all the board keys that have symbol as its value
      keys = @board.select {|key, value| key if value == symbol }.keys

      # Don't bother checking if there aren't at least three keys with the same symbol
      if keys.length >= 3
        # Gather the letter parts of the keys
        letters = {}
        keys.each do |value|
          letter = value.to_s[0]
          if letters[letter]
            letters[letter] += 1
          else
            letters[letter] = 1
          end
        end

        # If any of the values in the letters hash equal three
        # then this symbol is the winner
        selected_letters = letters.select {|key, value| key if value == 3 }
        winning_symbol = symbol if selected_letters.length > 0

        # Gather the number parts of the keys
        numbers = {}
        keys.each do |value|
          number = value.to_s[1]
          if numbers[number]
            numbers[number] += 1
          else
            numbers[number] = 1
          end
        end

        # If any of the values in the numbers hash equal three
        # then this symbol is the winner
        selected_numbers = numbers.select {|key, value| key if value == 3 }
        winning_symbol = symbol if selected_numbers.length > 0

        # Manually check for diagonal matches since there are only two possibilities
        winning_symbol = symbol if (keys.include? :A1) &&
                                   (keys.include? :B2) &&
                                   (keys.include? :C3)
        winning_symbol = symbol if (keys.include? :A3) &&
                                   (keys.include? :B2) &&
                                   (keys.include? :C1)
      end
    end

    # Set the @winner
    if player_symbol == winning_symbol
      @winner = :player
    elsif computer_symbol == winning_symbol
      @winner = :computer
    end
    @winner
  end

  # Returns true if the game is over
  def over?
    if @winner || draw?
      true
    else
      false
    end
  end

  # Returns true if the player won the game
  def player_won?
    if @winner == :player
      return true
    else
      return false
    end
  end

  # Returns true if the computer won the game
  def computer_won?
    if @winner == :computer
      return true
    else
      return false
    end
  end

  # Returns true if the game is a draw
  # A draw is when there isn't a winner and there aren't any open spaces left
  # on the board
  def draw?
    if !@winner && !spots_open?
      true
    else
      false
    end
  end

  # Board methods
  ###############

  attr_reader :board

  # Sets the board
  def board=(board)
    # Raise argument exception unless board is a hash with 9 keys
    raise ArgumentError, "board must be of type Hash" unless board.is_a? Hash
    raise ArgumentError, "board must have 9 spots" unless board.keys.length == 9

    # Ensure each value in required keys is present in board keys exactly once
    board_keys = [:A1, :A2, :A3, :B1, :B2, :B3, :C1, :C2, :C3]
    board_keys.each do |value|
      raise ArgumentError, "board must have exactly one key of #{value}" unless
        board.keys.count(value) == 1
    end

    # Ensure all board values are valid
    board.values.each do |value|
      raise ArgumentError, "board values must be one of #{SYMBOLS.dup << ' '}" unless
        (SYMBOLS.dup << ' ').include? value
    end

    @board = board
  end

  # Returns an array of open spots available on the board
  def open_spots
    @board.select {|key, value| key if value == ' ' }.keys
  end

  # Returns true if there are any open spots on the board
  def spots_open?
    open_spots.length > 0
  end

  # Outputs the board in a human readable state
  def current_state
    "\n
  #{@board[:A1]}  |  #{@board[:A2]}  |  #{@board[:A3]} \n
-----------------\n
  #{@board[:B1]}  |  #{@board[:B2]}  |  #{@board[:B3]} \n
-----------------\n
  #{@board[:C1]}  |  #{@board[:C2]}  |  #{@board[:C3]} \n\n"
  end
end
