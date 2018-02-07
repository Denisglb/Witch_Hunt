# require_relative './directionprocess.rb'

class CoOrdinantes
attr_reader :instructions, :direction, :x_value, :y_value, :final
	
	def initialize(directions = [])
	@direction = directions
	@x_value = 0
	@y_value = 0
	@final =[]
	end

	def x_co_ordinantes_positive
		positive = direction.select {|right| right == 90 }
		@x_value += positive.length
	end

	def x_co_ordinantes_negative
		negative = @direction.select {|left| left == 270 }
		@x_value -= negative.length
	end

	def y_co_ordinantes_positive
		positive = @direction.select {|up| up == 0 }
		@y_value += positive.length
	end

	def y_co_ordinantes_negative
		negative = direction.select {|down| down == 180}
		@y_value -= negative.length
	end

	def final_call
		x_co_ordinantes_positive
		x_co_ordinantes_negative
		y_co_ordinantes_positive
		y_co_ordinantes_negative
	end

	def final_co_ordinantes
		final_call
		@final << @x_value
		@final << @y_value
		return @final
	end
end


