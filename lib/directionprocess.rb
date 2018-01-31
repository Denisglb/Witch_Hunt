require_relative './WhichHunt'

class DirectionProcess
	attr_accessor :curr_position, :directions, :move

	def initialize(directions = [])
	@directions = directions
	@curr_position = 0
	@move = []
	end

	def pointing
		directions.each do |dir| 
			if dir == "left"
				@curr_position -= 90
				update

			elsif dir == "right" 
				@curr_position += 90
				update
			else
				dir == "forward"
				@move << [curr_position]
			end
		end
		@move.flatten
	end
	
	def update
		if curr_position == -90 then @curr_position = 270 end
		if curr_position == 360 then @curr_position = 0 end
	end 

end






