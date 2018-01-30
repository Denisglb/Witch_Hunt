require_relative './directionprocess.rb'

class CoOrdinantes
attr_reader :instructions, :direction, :x_value, :y_value, :final
	
	def initialize
	@instructions = WitchHunt.new.directions
	@direction = DirectionProcess.new(@instructions).pointing
	@x_value = 0
	@y_value = 0
	@final =[]
	end

	def direction_moved
		direction.map {|row| row[1]}
	end

	def x_co_ordinantes
		positive = direction_moved.select {|right| right == 90 }
		@x_value += positive.length
		negative = direction_moved.select {|left| left == 270 }
		@x_value -= negative.length
	end

	def y_co_ordinantes
		positive = direction_moved.select {|up| up == 0 }
		@y_value += positive.length
		negative = direction_moved.select {|down| down == 180}
		@y_value -= negative.length
	end

	def final_co_ordinantes
		@final << x_co_ordinantes
		@final << y_co_ordinantes
		
	end
end



co_ordinantes = CoOrdinantes.new
p co_ordinantes.final_co_ordinantes

