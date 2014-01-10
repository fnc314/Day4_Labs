pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

require './allergen_error.rb'

class Person

	attr_reader :allergens

	def initialize(name, allergens)
		@name = name
		@allergens = allergens
		@stomach = []
	end


	def eat_food(food)
		allergic = false
		food.each do |x| 
			if @allergens.include?(x)
				allergic = true
				begin 
				puts "YUK!"
				puts "PUKE!!!!!!"
					raise AllergenError.new(
						"#{@name} is allergic to #{x} and cannot eat #{food}!")
				end
			else
				@stomach << x
			end
		end
		puts "#{@name}'s stomach contains #{@stomach}"
	end

end

chris = Person.new("Chris", "gluten")
chris.eat_food(pizza)