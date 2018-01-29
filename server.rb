require 'httparty'

class WitchHunt
	include HTTParty
	base_uri 'http://which-technical-exercise.herokuapp.com'


	def directions
		self.class.get("/api/d.divilly@gmail.com/directions").parsed_response["directions"]
	end

end

class DirectionProcess
	attr_reader :curr_position

	def initialize
	@array = ["forward", "right", "forward", "forward", "forward", "left", "forward", "forward", "left", "right", "forward", "right", "forward", "forward", "right", "forward", "forward", "left"]
	@curr_position = 0
	@move = []
	end

	def pointing
		
		@array.each do |i| 
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
		p @move
	end
end

def update
	if curr_position == -90 then @curr_position = 270 end
	if curr_position == 360 then @curr_position = 0 end
end


# witch_hunt = WitchHunt.new
# p witch_hunt.directions

direction_process = DirectionProcess.new
direction_process.pointing
