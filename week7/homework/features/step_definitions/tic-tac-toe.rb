class TicTacToe

  OPPONENTS = [:player, :computer]
  SYMBOLS = [:X, :O]

  def initialize(first_player = nil, human_player_s_symbol = nil)
    create_opponents(first_player)
    assign_x_and_o(human_player_s_symbol)
    create_board
    create_register
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
    return gets.chomp
  end

  def computer_move
    move = open_spots.sample
    @board.board[move] = @computer.my_symbol
    @computer.up_next = :player
    move
  end

  def player_move
    until open_spots.include?(move = get_player_move.to_sym)
      indicate_player_turn
    end
    @board.board[move] = @human.my_symbol
    @human.up_next = :computer
    move
  end

  def current_state
    @board.current_state
  end

  def open_spots
    @open_spots = @board.available_moves
  end

  def spots_open?
    !open_spots.empty?
  end

  def determine_winner
    @board.determine_winner
    winner = @register[@board.winner]
    if winner
      @winner = winner
      @over = true
    elsif !spots_open?
      @over = true
      @draw = true
    end
  end

  def player_won?
    @winner == :player
  end

  def computer_won?
    @winner == :computer
  end

  def draw?
    @draw
  end

  def over?
    @over
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
    @computer.my_symbol = value
  end

  def computer_symbol
    @computer.my_symbol
  end

  def board
    @board.board
  end

  def board=(board)
    @board.board = board
  end

  private

  def create_board
    @board = Board.new
  end

  def pick_first_player
    OPPONENTS.sample
  end

  def create_opponents(first_player)
    first_player ||= pick_first_player
    @human = Human.new(first_player)
    @computer = Computer.new(first_player)
  end

  def create_register
    @register = {
      player: player_symbol,
      computer: computer_symbol
    }.invert
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
    attr_accessor :name, :my_symbol

    def up_next
      @@up_next
    end

    def up_next=(value)
      @@up_next = value
    end

    def initialize(up_next)
      @@up_next = up_next
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
    attr_reader :available_moves, :winner
    attr_accessor :board

    ROWS = ['A', 'B', 'C']
    COLS = ["1", "2", "3"]

    def initialize
      @board = {}
      ROWS.each do |r|
        COLS.each do |c|
          @board[(r + c).to_sym] = " "
        end
      end
    end

    def available_moves
      @board.reject {|k, v| v != " "}.keys
    end

    def current_state
      output = []
      @board.values.map { |v| v.to_s }.each_slice(3) { |vs| output << " " + vs.join(" | ") }
      "\n" + (output.join "\n-- + - + --\n")
    end

    def determine_winner
      check_columns_for_winner
      check_rows_for_winner
      check_diagonals_for_winner
    end

    private
    def check_columns_for_winner
      COLS.each do |c|
        regex = /[#{ROWS.join('')}]{1}#{c}/
        col = @board.select {|k, v| k =~ regex }
        all_same_symbol(col)
      end
      nil
    end

    def check_rows_for_winner
      ROWS.each do |r|
        regex = /#{r}[#{COLS.join('')}]{1}/
        row = @board.select {|k, v| k =~ regex }
        all_same_symbol(row)
      end
      nil
    end

    def check_diagonals_for_winner
      slash = [:A1, :B2, :C3]
      backslash = [:C1, :B2, :A3]
      [slash, backslash].each do |points|
        diag = @board.select {|k, v| points.include? k }
        all_same_symbol(diag)
      end
      nil
    end

    def all_same_symbol(three_points)
      if (vals = three_points.values.uniq) && vals.length == 1 && TicTacToe::SYMBOLS.include?(vals.first)
        return @winner = vals.first
      end
    end
  end
end
