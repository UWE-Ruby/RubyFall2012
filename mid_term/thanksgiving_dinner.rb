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
      proteins: ["Tofurkey", "Hummus"],
      veggies:  [:ginger_carrots , :potatoes, :yams],
      desserts:
      {
        :molds => [
          :cranberry,
          :mango,
          :cherry
        ],
        :other => [
          "Chocolate Moose"
        ],
         :pies => [
          :pumkin_pie
        ]
      }
    }
  end
end

