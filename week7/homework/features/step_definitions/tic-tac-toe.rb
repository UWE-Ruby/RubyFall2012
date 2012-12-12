class TicTacToe
  SYMBOLS = [:X, :O]

  attr_accessor :player, :player_symbol, :computer_symbol, :current_player, :current_turn

  def initialize(first_player=nil, human_symbol=nil)
    @first_player = first_player

    if first_player
      @current_turn = @first_player
    end

    # @player_symbol == :X ? @computer_symbol = :O : @computer_symbol = :X
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

    board

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

  # def current_turn
  #   # @current_player _move = @open_spots.sample
  #   @current_player_move
  #   ##########################
  #   move = @open_spots.shuffle!.pop    
  # end

  def indicate_player_turn
    "#{@current_player}'s Move:"
  end

  def get_player_move
    # @move = move
  end

  def get_player_move
    @the_move = gets.chomp
  end

  def player_move
    move = @the_move.to_sym
    if @board[move] == " "
      @board[move] = @player_symbol
    else
      puts "That spot is taken."  # Then what? get input? assign random spot?
    end
    return move
  end

  def computer_move
    # @current_player.move = @open_spots.sample
    
    @com_move = @open_spots.shuffle!.pop
    @board[move] = @computer_symbol

    # bob = @board.sample
    # if bob == ""
    #   @board.sample = @computer_symbol
    # else

    ##################### CONTINUE THIS PAARRRRRT

    # if board.values.include?(" ")
    #   for @board.sample do |s|
    #     @board.sample = @computer_symbol if @board.sample == " "
    #   end
    # # until @board.sample == " "
    # end

  end

  def board
    @board = {
      :A1 => " ",:A2 => " ",:A3 => " ",
      :B1 => " ",:B2 => " ",:B3 => " ",
      :C1 => " ",:C2 => " ",:C3 => " "
    }
  end

  def open_spots
    open_spots = [
    :A1, :A2, :A3,
    :B1, :B2, :B3,
    :C1, :C2, :C3
    ]
  end

end
# lines edited in steps file: 38, 46, 80, 84