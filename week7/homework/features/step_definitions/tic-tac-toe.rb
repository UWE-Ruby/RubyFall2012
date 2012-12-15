class TicTacToe
  SYMBOLS = [:X, :O]
  attr_accessor :player,:p_symbol, :comp, :comp_symbol,:board, :player_move, :current_player, :first_player, :winner
  
  def initialize (first_player=nil, first_symb=nil)
    @first_player = first_player
    pick_player_symbol(first_symb)
    @board = {:A1=>" ", :A2=>" ",:A3=>" ",
      :B1=>" ",:B2=>" ",:B3=>" ",
      :C1=>" ",:C2=>" ",:C3=>" "}
  end
  
  def pick_first_player
    if @first_player.nil?
      start = rand(0..1)
      if start == 0
        @current_player="Computer"
      else
        @current_player=@player
      end
    else
      if @first_player==:player
        @current_player = @player
      else
        @current_player = "Computer"
      end
   end
  end
  
  def current_player
    if @current_player.nil?
      pick_first_player
    end
    @current_player
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

  def player_symbol
    @p_symbol
  end
  
  def computer_symbol
    @comp_symbol
  end
  
  def indicate_palyer_turn
    @player.to_s+"'s Move"
  end
  
  def open_spots
    @open_spots = @board.find_all{|space,value| value==" "}
  end
  
  def computer_move
    random_spot = rand(0..@open_spots.count)
    spot = @open_spots[random_spot]
    @board[spot[0]] = @comp_symbol
    @current_player=@player
    spot
  end
  
  def current_state
    @board.values.map(&:to_s)
  end
  
  def get_player_move
    gets.chomp
  end
  
  def player_move
    while move=get_player_move.to_sym do
      if @board[move]==" "  
        @board[move]=@p_symbol
        @current_player = "Computer"
        break
      end
    end
    move
  end
  
  def determine_winner
    win_scenarios = [
      [:A1,:A2,:A3],
      [:B1,:B2,:B3],
      [:C1,:C2,:C3],
      [:A1,:B1,:C1],
      [:A2,:B2,:C2],
      [:A3,:B3,:C3],
      [:A1,:B2,:C3],
      [:C1,:B2,:A3]]
    
    x_space = @board.map

  end
    
  
  def player_won?
    
  end
  
end
