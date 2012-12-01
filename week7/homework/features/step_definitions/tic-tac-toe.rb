class TicTacToe
  attr_accessor :player

  SYMBOLS = [:x, :o]
  OPPONENTS = [:player, :computer]

  def initialize(playa = :player)
    player = playa
    @new_game = true
    assign_x_and_o
  end

  def welcome_player
    "Welcome #{player}"
  end

  def current_player
    if @new_game
      @new_game = false
      next_up = [player, "Computer"].sample
      initialize_state_tracker(next_up)
      return next_up
    else
      @player_state_tracker.rotate!.first
    end
  end

  private

  def initialize_state_tracker(next_up)
    proc = Proc.new {|human| [human, "Computer"]}
    @player_state_tracker = proc.call(player)

    # line up @player_state_tracker with next_up so that it correctly tracks state
    @player_state_tracker.rotate! unless @player_state_tracker.first == next_up
  end

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
