class TicTacToe
  SYMBOLS = [:X, :O]
  attr_accessor :player,:p_symbol, :whos_turn, :comp, :comp_symbol, :board
  
  def initialize (first_player=nil, first_symb=nil)
    @player = pick_first_player(first_player).to_s.capitalize
    pick_player_symbol(first_symb)
    @board = {":A1"=>"", ":A2"=>"",":A3"=>"",
      ":B1"=>"",":B2"=>"",":B3"=>"",
      ":C1"=>"",":C2"=>"",":C3"=>""}
  end
  
  def pick_first_player(first_player)
    if first_player.nil?
      start = Random.new
      start.rand(0..1)
      if start == 0
        @whos_turn="Computer"
      else
        @whos_turn=@player
      end
    else
      @whos_turn = first_player
    end
  end
  
  def pick_player_symbol(first_symbol)
      if first_symbol.nil?
        @p_symbol = :X
      else
        @p_symbol = first_symbol
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
    @p_symbol
  end
  
  def indicate_palyer_turn
    @player.to_s+"'s Move"
  end
  
  def get_player_move
    "And waits for my input of"
  end
  
end
