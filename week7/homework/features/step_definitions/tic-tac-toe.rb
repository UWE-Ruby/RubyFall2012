class TicTacToe
  attr_accessor :player

  OPPONENTS = [:player, :computer]
  SYMBOLS = [:x, :o]

  def initialize(first_player = nil)
    @new_game = true
    create_opponents(first_player)
    assign_x_and_o
    pick_first_player
  end

  def welcome_player
    "Welcome #{player}"
  end

  def pick_first_player
    next_up = [player, "Computer"].sample
  end

  def current_player
    if @new_game
      @new_game = false
      return player
    else
      @player_state_tracker.rotate!.first
    end
  end

  def indicate_player_turn
    puts "#{player}'s Move:"
  end

  #accessors

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

  def create_opponents(first_player)
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

    def initialize(up_next_toggle)
      up_next = up_next_toggle
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
