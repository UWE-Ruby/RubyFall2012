require_relative 'dinner'

class ThanksgivingDinner < Dinner
  attr_accessor :guests
  attr_reader :menu

  def initialize(menu)
    @menu = {}
    @menu[:diet] = menu
  end
end

