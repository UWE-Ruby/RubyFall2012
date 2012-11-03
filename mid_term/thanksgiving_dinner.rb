require_relative 'dinner'

class ThanksgivingDinner < Dinner
  attr_accessor :guests
  attr_reader :menu

  def initialize(diet)
    intialize_menu(diet)
  end

  # sum the letters in each guest name for the seating chart size
  def seating_chart_size
    raise ArgumentError "Must set guests to an Array of strings containing guests names before calling this method." unless guests && guests.respond_to?(:inject)
    guests.inject(0) {|sum, name| sum += name.size }
  end

  private
  def intialize_menu(diet)
    @menu = {
      diet: diet,
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

