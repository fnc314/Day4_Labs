class Person

	attr_reader :allergens

	def initialize(name, allergens)
		@name = name
		@allergens = allergens
		@stomach = []
	end


	def eat_food(food)
		food.each { |x| @stomach << x}
		@stomach.each do |x| 
			if @allergens.include?(x)
				puts "YUK!"
				puts "PUKE!!!!!!"
				puts "#{@name} is allergic to #{x}!"
				@stomach.delete(x)
			end
		end
		puts @stomach
	end

end

class AllergenError < ArgumentError


end