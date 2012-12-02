class TicTacToe
  attr_accessor :player

  OPPONENTS = [:player, :computer]
  SYMBOLS = [:X, :O]

  def initialize(first_player = nil, first_players_symbol = nil)
    create_opponents(first_player)
    assign_x_and_o(symbol: first_players_symbol, first_player: first_player)
    create_board
  end

  def welcome_player
    "Welcome #{player}"
  end

  def current_player
    @human.up_next == :player ? @human.name : @computer.name
  end

  def indicate_player_turn
    puts "#{player}'s Move:"
  end

  def get_player_move
    move = gets
    if @board.available_moves.include? move
      @human.moves << move
    else
      puts "#{move} is not a valid move. Available moves are:\n#{@board.available_moves.join}"
    end
  end

  def create_board
    @board = Board.new
  end

  #accessors
  def player
    @human.name
  end

  def player=(value)
    @human.name = value
  end

  def player_symbol=(value)
    @human.my_symbol = value
  end

  def player_symbol
    @human.my_symbol
  end

  def computer_symbol=(value)
    computer.my_symbol = value
  end

  def computer_symbol
    @computer.my_symbol
  end

  private

  def pick_first_player
    OPPONENTS.sample
  end

  def create_opponents(first_player)
    first_player ||= pick_first_player
    @human = Human.new(first_player)
    @computer = Computer.new(first_player)
  end

  def assign_x_and_o(ops = {})
    if ops.is_a? Hash and ops[:first_players_symbol] and ops[:first_player]
      if ops[:first_player] == :player
        @human.my_symbol = ops[:first_players_symbol]
        @computer.my_symbol = (SYMBOLS - ops[:first_players_symbol]).first
      else
        @computer.my_symbol = ops[:first_players_symbol]
        @human.my_symbol = (SYMBOLS - ops[:first_players_symbol]).first
      end
    else
      x_or_o = SYMBOLS.shuffle
      @human.my_symbol = x_or_o.pop
      @computer.my_symbol = x_or_o.pop
    end
  end

  class Player
    attr_accessor :name, :up_next, :my_symbol, :moves

    def initialize(up_next)
      @up_next = up_next
      @moves = []
    end
  end

  class Human < Player
  end

  class Computer < Player
    def initialize(up_next_toggle)
      name = "Computer"
      super
    end
  end

  class Board
    attr_reader :available_moves

    ROWS = ['A', 'B', 'C']
    COLS = ["1", "2", "3"]

    def initialize
      @available_moves = {}
      ROWS.each do |r|
        COLS.each do |c|
          @available_moves[(r + c).to_s] = nil
        end
      end
    end
  end
end
