class Dinner
end

class ThanksgivingDinner < Dinner
	attr_accessor :guests, :diet

	def initialize(diet)
		@diet = diet
	end

	def seating_chart_size
		@guests.map(&:length).inject(0, :+)
	end

	def menu
		{ diet: @diet,
			proteins: ["Tofurkey", "Hummus"],
			veggies: [:ginger_carrots , :potatoes, :yams],
			desserts: {:pies=>[:pumkin_pie],
								 :other=>["Chocolate Moose"],
								 :molds=>[:cranberry, :mango, :cherry]} }
	end

	def whats_for_dinner
		proteins = menu[:proteins]
		veggies  = menu[:veggies]
		veggies.each_with_index do |veggie, index|
			veggies[index] = titleize veggie.to_s
		end 
		"Tonight we have proteins #{proteins.oxford_commaize}" +
		", and veggies #{veggies.oxford_commaize} ."
	end


	def whats_for_dessert
	end

end
class Array
	def oxford_commaize
		case
		when self.length >= 3 then self[0..-2].join(", ") + ", and #{self.last}"
		when self.length == 2 then "#{self.first} and #{self.last}"
		when self.length == 1 then "#{self.first}"
		else 											 ""
		end
	end
end