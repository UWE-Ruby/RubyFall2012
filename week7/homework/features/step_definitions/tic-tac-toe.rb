class TicTacToe
  SYMBOLS = [:X, :O]
  attr_accessor :player,:p_symbol, :comp, :comp_symbol,:whos_first,:board, :com_move
  
  def initialize (first_player=nil, first_symb=nil)
    @player = pick_first_player(first_player).to_s.capitalize
    pick_player_symbol(first_symb)
    @board = {":A1"=>nil, ":A2"=>nil,":A3"=>nil,
      ":B1"=>nil,":B2"=>nil,":B3"=>nil,
      ":C1"=>nil,":C2"=>nil,":C3"=>nil}
  end
  
  def pick_first_player(first_player)
    if first_player.nil?
      start = rand(0..1)
      if start == 0
        @whos_first="Computer"
      else
        @whos_first=@player
      end
    else
      @whos_first = first_player
    end
  end
  
  def pick_player_symbol(first_symbol)
      if first_symbol.nil?
        start = rand(0..1)
         if start == 0
           @p_symbol=:X
         else
           @p_symbol=:O
         end
      else
        @p_symbol = first_symbol
      end
      
      if @p_symbol ==:X
        @comp_symbol = :O
      else
        @comp_symbol = :X
      end
  end
  
  def welcome_player
    "Welcome " + @player.to_s
  end
  
  def current_player
    @player
  end

  def player_symbol
    @p_symbol
  end
  
  def computer_symbol
    @comp_symbol
  end
  
  def indicate_palyer_turn
    @player.to_s+"'s Move"
  end
  
  def get_player_move
    "And waits for my input of"
  end
  
  def open_spots
    @open_spots = @board.find_all{|space,value| value.nil?}
  end
  
  def computer_move
    random_spot = rand(0..@open_spots.count)
    spot = @open_spots[random_spot]
    @board[spot[0]] = @comp_symbol
    spot
  end
  
  def current_state
    @board.values.map(&:to_s)
  end
  
end
