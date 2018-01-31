require 'co-ordinantes.rb'

describe CoOrdinantes do 
	let (:dir) { [] }
	let (:co_ordinates) { described_class.new(dir) }

	context "#initialize" do
		it "is initialized with an empty array" do
			expect(co_ordinates.direction).to be_an_instance_of(Array)
		end
	end
end
