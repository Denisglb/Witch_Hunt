require_relative './WhichHunt'

class DirectionProcess
	attr_accessor :curr_position, :directions, :move

	def initialize(directions = [])
	@directions = directions
	@curr_position = 0
	@move = []
	end

	def pointing
		
		directions.each do |i| 
			if i == "left"
				@curr_position -= 90
				update

			elsif i == "right" 
				@curr_position += 90
				update

			else
				i == "forward"
				@move << [i, curr_position]
			end
		end
		@move
	end
	
	def update
		if curr_position == -90 then @curr_position = 270 end
		if curr_position == 360 then @curr_position = 0 end
	end 

end



