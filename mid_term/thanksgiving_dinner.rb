require "#{File.dirname(__FILE__)}/dinner"

class ThanksgivingDinner < Dinner
  attr_accessor :guests
  attr_reader :menu
  
  def initialize(diet=[])
    if diet == :vegan
      @menu = {
                :diet => diet, 
                :proteins => ["Tofurkey", "Hummus"], 
                :veggies => [:ginger_carrots, :potatoes, :yams],
                :desserts => {
                              :pies => [:pumkin_pie], 
                              :other => ["Chocolate Moose"], 
                              :molds => [:cranberry, :mango, :cherry]
                }
      }
    end
  end
  def seating_chart_size
   @guests.inject(0) {|sum, word| sum += word.size}
  end
  def whats_for_dinner
    p_ary = @menu[:proteins].to_a
    v_ary = @menu[:veggies].to_a
    
    food = [p_ary, v_ary] 
    food = food.map do |food_ary|
      food_ary = food_ary.map {|food_item| food_item = food_item.to_s}
      food_ary = food_ary.map do |food_item|
        food_item = food_item.capitalize
        if food_ary.size != 2
          if food_item == food_ary.last
            food_item.gsub(/\b[a-zA-Z]\w*\b/, "and #{food_item.capitalize}")
          else
            food_item.gsub(/\b[a-zA-Z]\w*\b/, "#{food_item.capitalize}, ")
          end
        else
          if food_item == food_ary.last
            food_item.gsub(/\b[a-zA-Z]\w*\b/, "and #{food_item.capitalize}")
          end
        end 
      end
      food_ary = food_ary.map do |food_item|  
        food_item = food_item.gsub(/[a-z]_/) {|ltr| "#{ltr.chomp("_")} "}.gsub(/\s\w/) {|ltr| ltr.upcase} 
      end
    end  
    food = food.map do |ary| 
      ary.join
    end
    "Tonight we have proteins #{food[0]}, and veggies #{food[1]}."
  end
end
