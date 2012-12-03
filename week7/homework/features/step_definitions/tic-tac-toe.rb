class TicTacToe

  OPPONENTS = [:player, :computer]
  SYMBOLS = [:X, :O]

  def initialize(first_player = nil, human_player_s_symbol = nil)
    create_opponents(first_player)
    assign_x_and_o(human_player_s_symbol)
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
    # until board.has_key?(input = gets.chomp)
    #   puts "please enter a valid move"
    # end
    # indicate_player_turn
    return gets.chomp
  end

  def create_board
    @board = Board.new
  end

  def open_spots
    @open_spots = @board.available_moves.reject {|k, v| v == nil?}.keys
  end

  def computer_move
    move = open_spots.sample
    @computer.moves << move
    @board.available_moves[move] = @computer.my_symbol
    @computer.up_next = :player
    move
  end

  def player_move
    move = get_player_move.to_sym
    @board.available_moves[@player_move] = @human.my_symbol
    @human.moves << @player_move
    @human.up_next = :computer
    move
  end

  def current_state
    @board.available_moves.values.compact.map {|v| v.to_s}
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

  def board
    @board.available_moves
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

  def assign_x_and_o(human_player_s_symbol)
    if human_player_s_symbol
      @human.my_symbol = human_player_s_symbol
      @computer.my_symbol = (SYMBOLS - [human_player_s_symbol]).first
    else
      x_or_o = SYMBOLS.shuffle
      @human.my_symbol = x_or_o.pop
      @computer.my_symbol = x_or_o.pop
    end
  end

  class Player
    attr_accessor :name, :my_symbol, :moves

    def up_next
      @@up_next
    end

    def up_next=(value)
      @@up_next = value
    end

    def initialize(up_next)
      @@up_next = up_next
      @moves = []
    end
  end

  class Human < Player
  end

  class Computer < Player
    def initialize(up_next_toggle)
      super
      @name = "Computer"
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
          @available_moves[(r + c).to_sym] = nil
        end
      end
    end
  end
end
