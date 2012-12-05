class TicTacToe
  attr_reader :player_symbol, :computer_symbol, :open_spots, :player_move, :computer_won, :player_won, :over
  attr_accessor :board, :current_state
  
  SYMBOLS = [:X, :O]
  WIN_SCENARIOS = {
    1 => ['A1','A2','A3'],
    2 => ['B1','B2','B3'],
    3 => ['C1','C2','C3'],
    4 => ['A1','B1','C1'],
    5 => ['A2','B2','C2'],
    6 => ['A3','B3','C3'],
    7 => ['A1','B2','C3'],
    8 => ['C1','B2','A3']
  }
  
  def initialize( first_turn = false, chosen_symbol = false)
    @board = {
      :A1 => " ", :A2 => " ", :A3 => " ",
      :B1 => " ", :B2 => " ", :B3 => " ",
      :C1 => " ", :C2 => " ", :C3 => " "
      }
    @players = {:player => "Player", :computer => "Computer"}
    @current_player = first_turn
    if first_turn == false
      @current_player = [:computer, :player].sample
    end
    if chosen_symbol == false
      @player_symbol = :X
      @computer_symbol = :O
    else
      @player_symbol = chosen_symbol
      @computer_symbol = SYMBOLS.select{|x| x != chosen_symbol}[0]
    end
    @computer_won = false
    @player_won = false
    @over = false
  end
  
  def current_player
    @players[@current_player]
  end
  
  def player=(str)
    @players[:player] = str
  end
  
  def player
    @players[:player]
  end
  
  def open_spots
    @board.select{|x,y| y == " "}.keys
  end
  
  def current_state
    str = "#{board[:A1]} | #{board[:A2]} | #{board[:A3]} \n"
    str += "#{board[:B1]} | #{board[:B2]} | #{board[:B3]} \n"
    str += "#{board[:C1]} | #{board[:C2]} | #{board[:C3]} \n"
    str
  end
  
  def welcome_player
    "Welcome #{@players[:player]}"
  end
  
  def indicate_player_turn
    puts "#{@players[@current_player]}'s Move:"
  end
  
  def get_player_move
    gets.chomp
  end
  
  def player_move
    move = self.get_player_move.to_sym
    if !self.open_spots.include? move
      move = self.get_player_move.to_sym
    end
    @board[move] = @player_symbol
    @current_player = :computer
    move
  end
  
  def computer_move
    puts "Computer's Turn:"
    sleep(1)
    move = self.open_spots.sample
    @board[move] = @computer_symbol
    @current_player = :player
    move
  end
  
  def spots_open?
    !self.open_spots.empty?
  end
  
  def draw?
   (!self.spots_open? && !@player_won && !computer_won) ? true : false
  end
  
  def over?
    (self.draw? || @player_won || @computer_won)? true : false
  end
  
  def player_won?
    @player_won? true : false
  end
  
  def computer_won?
    @computer_won? true : false
  end
  
  def determine_winner
    WIN_SCENARIOS.each do |key, scenario|
      if (!@player_won || @computer_won)
        @player_won = true
        @computer_won = true
        scenario.each do | space |
          @player_won = false if @board[space.to_sym] != @player_symbol
          @computer_won = false if @board[space.to_sym] != @computer_symbol
        end
      end
    end
    @over = self.over?
  end
end
