require_relative 'dinner'

class ThanksgivingDinner < Dinner
  attr_accessor :guests
  attr_reader :menu

  def initialize(menu)
    intialize_menu
    @menu[:diet] = menu
  end

  private
  def intialize_menu
    @menu = {
      proteins: ["Tofurkey", "Hummus"]
    }
  end
end

