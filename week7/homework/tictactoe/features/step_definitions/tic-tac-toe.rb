class TicTacToe
  attr_accessor :player, :player_symbol, :winner, :board
  attr_reader :over, :currentplayer, :computer_symbol

  SYMBOLS = [:O, :X]

  def initialize(currentplayer = nil, symbol = nil)
    @over = false
    @winner = :none

    if currentplayer != nil then
      @currentplayer = currentplayer
    else
      @currentplayer = (Random.new.rand(0..1) == 0 ? :player : :computer)
    end

    if symbol != nil then
      @player_symbol = symbol
      @computer_symbol = (symbol == :O ? :X : :O)
    else
      @player_symbol = SYMBOLS[0]
      @computer_symbol = SYMBOLS[1]
    end

    @board = {
        :A1 => " ", :A2 => " ", :A3 => " ",
        :B1 => " ", :B2 => " ", :B3 => " ",
        :C1 => " ", :C2 => " ", :C3 => " "
    }
  end

  def welcome_player
    "Welcome #{@player}"
  end

  def indicate_palyer_turn
    "It is Your Turn to Move"
  end

  def current_player
    @currentplayer == :computer ? "Computer" : @player
  end

  def current_state
    @board.values
  end

  def player_move
    set_position(get_player_move.to_sym, @player_symbol)
    @currentplayer = :computer
    get_player_move.to_sym
  end

  def get_player_move
    @player_move = gets()
  end

  def computer_move
    @pick = open_spots.sample()
    set_position(@pick, @computer_symbol)
    @currentplayer = :player
    @pick
  end

  def open_spots
    @board.select{|k,v| v == " "}.keys
  end

  def spots_open?
    open_spots.count() > 0
  end

  def set_position(position, symbol)
    #TODO check for a valid move
    @board[position] = symbol.to_s
  end

  def determine_winner
    ["A","B","C","1","2","3"].each do |v|
      if check_row(@player_symbol, v) then
        @winner = :player
      end
    end
    if check_diagonal(@player_symbol) then
      @winner = :player
    end


      #TODO Check diagnol for player
    ["A","B","C","1","2","3"].each do |v|
      if check_row(@computer_symbol, v) then
        @winner = :computer
        @over = true
      end
    end
    if check_diagonal(@computer_symbol) then
      @winner = :computer
    end
    if @winner != :none then
      @over = true
    end

      #TODO Consolidate copied code
    if not over? and not spots_open? then
      puts("Draw")
        @winner = :draw
        @over = true
    end
  end

  def check_row(symbol, row)
    @board.select{|k,v| v==symbol}.keys.join.count(row) == 3
  end

  def check_diagonal(symbol)
    (@board[:A1].to_s + @board[:B2].to_s + @board[:C3].to_s).count(symbol.to_s) == 3 ||
        (@board[:A3].to_s + @board[:B2].to_s + @board[:C1].to_s).count(symbol.to_s) == 3
  end

  def over?
    @over
  end

  def player_won?
    @winner == :player
  end

  def computer_won?
    @winner == :computer
  end

  def draw?
    @winner == :draw
  end
end