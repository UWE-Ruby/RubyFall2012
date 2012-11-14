# duck punching Symbol
class Symbol

  # giving this an unusual name to hopefully prevent naming collisions
  def kris_l_titleize
    to_s.gsub('_', ' ').split(/(\W)/).map(&:capitalize).join
  end
end

# duck punching Array
class Array

  # giving this an unusual name to hopefully prevent naming collisions
  def kris_l_and_join(str)
    out = ""
    cln = clone

    last_item = cln.pop
    out << cln.join(str)
    out << ", and #{last_item}"
  end
end

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

  def whats_for_dessert
    "Tonight we have 5 delicious desserts: #{menu[:desserts][:pies].pop.kris_l_titleize}, #{menu[:desserts][:other].pop}, and #{menu[:desserts][:molds].size} molds: #{menu[:desserts][:molds].map{|m| m.kris_l_titleize}.join(' and ')}."
  end

  def whats_for_dinner
    "Tonight we have proteins #{menu[:proteins].join(' and ')}, and veggies #{menu[:veggies].map{|v| v.kris_l_titleize }.kris_l_and_join(', ')}."
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

