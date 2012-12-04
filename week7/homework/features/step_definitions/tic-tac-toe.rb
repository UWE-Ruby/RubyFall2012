class TicTacToe
  SYMBOLS = [:X, :O]
  # SYMBOLS = [@player_symbol, @computer_symbol]

  attr_accessor :player, :player_symbol, :computer_symbol, :current_player, :current_turn

  def initialize(first_player=nil, symbol=nil)
    @first_player = first_player

    if first_player
      @current_turn = @first_player
    end
    # if player.nil?
    #   @current_player = ["Renee", "Computer"].sample   # had @player in array
    
    # elsif player == :computer
    #   @current_player = "Computer"
    # else #player == :player
    #   @current_player = "Renee" # had @player
    # end
  end

  

  # def player=(player)
  #   @player = player
  # end

  def welcome_player
    "Welcome #{@player}"
  end

  def current_player
    if @first_player.nil?
      @current_player = [@player, "Computer"].sample
    else
      @current_player = {:computer => "Computer", :player => @player || "Player 1"}[@current_turn]
    end
    # @a_player = [@player, "Computer"]
    #return @current_player #= @a_player.sample
  end

  def player_symbol
    @player_symbol = SYMBOLS.sample

    if @player_symbol == :X
      @computer_symbol = :O
    else
      @computer_symbol = :X
    end

    # @player_symbol = SYMBOLS[0]
    # @computer_symbol = SYMBOLS[1]

    # @player_symbol = "O"
    # @computer_symbol = "X"
  end

  def indicate_player_turn
    "#{@current_player}'s Move:"
  end

  def get_player_move
    # @move = move
  end


end




# lines edited in steps file: 38, 46, 80, 84