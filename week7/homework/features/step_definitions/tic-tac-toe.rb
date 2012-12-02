class TicTacToe
  attr_accessor :player

  OPPONENTS = [:player, :computer]
  SYMBOLS = [:x, :o]

  def initialize(first_player = nil)
    create_opponents(first_player)
    assign_x_and_o
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

  def assign_x_and_o
    x_or_o = SYMBOLS.shuffle
    @human.my_symbol = x_or_o.pop
    @computer.my_symbol = x_or_o.pop
  end

  class Player
    attr_accessor :name, :up_next, :my_symbol

    def initialize(up_next)
      @up_next = up_next
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
end
