class TicTacToe
  
  module Boards
    New_Game = {
      :A1 =>' ', :A2 =>' ', :A3 =>' ',
      :B1 =>' ', :B2 =>' ', :B3 =>' ',
      :C1 =>' ', :C2 =>' ', :C3 =>' '
    }

    Winners = 
      [[:A1, :A2, :A3],
       [:B1, :B2, :B3],
       [:C1, :C2, :C3],
       [:A1, :B1, :C1],
       [:A2, :B2, :C2],
       [:A3, :B3, :C3],
       [:A1, :B2, :C3],
       [:C1, :B2, :A3]]
  end

  SYMBOLS = [:X, :O]

  attr_accessor :board
  
  attr_reader :player_symbol, :computer_symbol, :winner, :player_win, :comp_win

  def initialize(player = nil, symbol = nil)
    
    @players = {:player => nil, :computer => "Computer"}
    
    #PLAYER/WHO GOES FIRST
    if player
      @current = player    
    else
      @current = @players.keys.shuffle.first
    end

    if symbol
      @player_symbol = symbol.to_sym
    else
      @player_symbol = SYMBOLS.shuffle.first
    end
    
    #COMPUTER
    @computer_symbol = @player_symbol == SYMBOLS[0] ? SYMBOLS[1] : SYMBOLS[0]

    @board = Boards::New_Game
    @winner, @player_win, @comp_win = false, false, false
    
  end

  def player=(name)
    @players[:player] = name 
  end

  def player
    @players[:player]
  end

  def welcome_player
    "Welcome #{@players[:player]}"
  end

  def current_player
    @players[@current]
  end
  
  def indicate_player_turn
    "#{@players[:player]}'s Move:"
  end
 
  def get_player_move
    p_move = gets.chomp.to_sym
  end
  
  def player_move
    if open_spots.include?(get_player_move.to_sym)
      @board[get_player_move.to_sym] = @player_symbol
      get_player_move.to_sym
    else
      get_player_move.to_sym
    end
  end

  def open_spots
    @board.select { |k, v| v == " "}.keys
  end

  def spots_open?
    open_spots.length > 0
  end

  def computer_move
    comp_move = open_spots.shuffle.first
    @board[comp_move] = @computer_symbol
    comp_move
  end

  def current_state
    @board.values.collect { |v| v.to_s}
  end

  def draw_board
    print "\n\n"
    print " #{@board[:A1]} |"
    print " #{@board[:A2]} |"
    print " #{@board[:A3]}"
    print "\n---+---+---\n"
    print " #{@board[:B1]} |"
    print " #{@board[:B2]} |"
    print " #{@board[:B3]}"
    print "\n---+---+---\n"
    print " #{@board[:C1]} |"
    print " #{@board[:C2]} |"
    print " #{@board[:C3]}"
    print "\n\n"
  end
  
  def determine_winner
    Boards::Winners.find do |i|
      three_in_a_row = []
      i.each { |j| three_in_a_row << @board[j]}

      if three_in_a_row.uniq.size == 1 && !three_in_a_row.include?(' ') 
        @winner = true
        if three_in_a_row[0] == @player_symbol
          @player_win = true
        else
          @comp_win = true
        end
      end
    end
  end

  def player_won?
    @player_win
  end
  def computer_won?
    @comp_win
  end
  def draw?
    @winner == false && spots_open? == false  
  end
  def over?
    player_won? || computer_won? || draw?
  end

end








  

























