class TicTacToe
  attr_accessor :player

  SYMBOLS = [:x, :o]
  OPPONENTS = [:player, :computer]

  def initialize
    @new_game = true
  end

  def welcome_player
    "Welcome #{player}"
  end

  def current_player
    if @new_game
      @new_game = false
      assign_x_and_o
      return [player, "Computer"].sample
    end
  end

  private

  def assign_x_and_o
    x_or_o = SYMBOLS.shuffle
    OPPONENTS.each do |op|
      self.class.class_eval do
        define_method("#{op}_symbol") do
          x_or_o.pop
        end
      end
    end
  end
end
