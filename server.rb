require 'httparty'

class WitchHunt
	include HTTParty
	base_uri 'http://which-technical-exercise.herokuapp.com'


	def directions
		self.class.get("/api/d.divilly@gmail.com/directions").parsed_response["directions"]
	end

end

class DirectionProcess

	def initialize
	@array = ["forward", "right", "forward", "forward", "forward", "left", "forward", "forward", "left", "right", "forward", "right", "forward", "forward", "right", "forward", "forward", "left"]
	@curr_position = 0
	@move = []
	end

	def pointing
		
		p forward = @array.each_with_index.map { |a, i| a == 'forward' ? 1 : a }


	end
end

# witch_hunt = WitchHunt.new
# p witch_hunt.directions

direction_process = DirectionProcess.new
direction_process.pointing


# class StackExchange
#   include HTTParty
#   base_uri 'api.stackexchange.com'

#   def initialize(service, page)
#     @options = { query: { site: service, page: page } }
#   end

#   def questions
#     self.class.get("/2.2/questions", @options)
#   end

#   def users
#     self.class.get("/2.2/users", @options)
#   end
# end

# stack_exchange = StackExchange.new("stackoverflow", 1)
# puts stack_exchange.questions
# puts stack_exchange.users