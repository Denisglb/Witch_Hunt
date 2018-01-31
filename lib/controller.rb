require_relative './directionprocess.rb'
require_relative './WhichHunt.rb'
require_relative './co-ordinantes.rb'

class Controller

attr_reader :co_ordinantes

	def initialize(witchhunt_klass, directionprocess_klass, co_ordinantes_klass)
		@instructions = witchhunt_klass.new.directions
		@directions = directionprocess_klass.new(@instructions).pointing
		@co_ordinantes = co_ordinantes_klass.new(@directions).final_co_ordinantes
	end 

	
end

witchhunt = Controller.new(WitchHunt, DirectionProcess, CoOrdinantes)
p witchhunt.co_ordinantes