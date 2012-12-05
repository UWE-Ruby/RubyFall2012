class TicTacToe
  SYMBOLS = [:X, :O]

  attr_accessor :player, :player_symbol, :computer_symbol, :current_player, :current_turn

  def initialize(first_player=nil, human_symbol=nil)
    @first_player = first_player

    if first_player
      @current_turn = @first_player
    end

    if human_symbol == :O
      @player_symbol = human_symbol
      @computer_symbol = :X
    elsif human_symbol == :X
      @player_symbol = human_symbol
      @computer_symbol = :O
    elsif human_symbol.nil?
      @player_symbol = SYMBOLS.sample
      @computer_symbol = SYMBOLS[SYMBOLS.index(@player_symbol) - 1]
    end

    # if player.nil?
    #   @current_player = ["Renee", "Computer"].sample   # had @player in array
    
    # elsif player == :computer
    #   @current_player = "Computer"
    # else #player == :player
    #   @current_player = "Renee" # had @player
    # end
  end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    if @first_player.nil?
      @current_player = [@player, "Computer"].sample
    else
      @current_player = {:computer => "Computer", :player => @player || "Player 1"}[@current_turn]
    end
  end

  def current_turn
    @current_player _move = @open_spots.sample
    @current_player_move

    # use .pop and .shuffle!
  end

  def player_symbol
    @player_symbol = SYMBOLS.sample

    if @player_symbol == :X
      @computer_symbol = :O
    else
      @computer_symbol = :X
    end
  end

  def indicate_player_turn
    "#{@current_player}'s Move:"
  end

  def get_player_move
    # @move = move
  end

  def player_move(choose_move)
    # move = get_player_move.to_sym
    move = choose_move.to_sym
    if @board[move] == ""
      @board[move] = @player_symbol
    else
      puts "That spot is taken."  # Then what? get input? assign random spot?
      # @board[move] = :B2
    end
  end

  # def current_move


  def board
    @board = [
      :A1 => "",:A2 => "",:A3 => "",
      :B1 => "",:B2 => "",:B3 => "",
      :C1 => "",:C2 => "",:C3 => ""
    ]
  end






end
# lines edited in steps file: 38, 46, 80, 84