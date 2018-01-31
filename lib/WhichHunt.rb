require 'httparty'

class WitchHunt
	include HTTParty
	base_uri 'http://which-technical-exercise.herokuapp.com'


	def directions
		self.class.get("/api/d.divilly@gmail.com/directions").parsed_response["directions"]
	end
end

# p witchhunt = WitchHunt.new.directions