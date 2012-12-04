class TicTacToe
  attr_accessor :player, :current_turn, :board, :player_symbol, 
                :computer_symbol
  SYMBOLS = [:X, :O]

  def initialize(player = nil, player_symbol = nil)
    if player 
      @current_turn = player

      if player_symbol
        @player_symbol = player_symbol
        @computer_symbol = SYMBOLS[SYMBOLS.index(player_symbol) - 1]
      end

    else
      @current_turn = randomly_choose
    end

    randomly_assign_symbol unless (@player_symbol && @computer_symbol)
    initialize_board

  end

  def welcome_player
    return "Welcome #{@player}"
  end

  def randomly_choose
    return [:player, :computer].sample
  end

  def current_player
    return {:player => @player || "Player0", :computer => "Computer"}[@current_turn]
  end

  def indicate_player_turn
    puts "#{current_player}'s Move:"
  end

  def player_move
    move = get_player_move.to_sym

    if @board[move] == " "
      @board[move] = @player_symbol
    else
      return :B2 #need to change
    end
    return move
  end

  def get_player_move
    gets.chomp
  end

  def initialize_board
    @board = {:A1 => " ", :A2 => " ", :A3 => " ",
              :B1 => " ", :B2 => " ", :B3 => " ",
              :C1 => " ", :C2 => " ", :C3 => " "}
  end

  def randomly_assign_symbol
    @computer_symbol = SYMBOLS.sample
    @player_symbol = SYMBOLS[SYMBOLS.index(@computer_symbol) - 1]
  end

  def current_state
    @player_symbol.to_s
  end

  def determine_winner
    
  end

  def player_won?
  end

  def spots_open?
  end

  def draw?
  end


end