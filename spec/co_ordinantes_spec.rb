require 'co-ordinantes.rb'

describe CoOrdinantes do 
	let (:dir) { [] }
	let (:co_ordinates) { described_class.new(dir) }

	context "#initialize" do
		it "is initialized with an empty array" do
			expect(co_ordinates.direction).to be_an_instance_of(Array)
		end

		it "has an initial value of x at 0" do 
			expect(co_ordinates.x_value).to be_equal(0)
		end

		it "has an initial value of y at 0" do
			expect(co_ordinates.y_value).to be_equal(0)
		end
	end

	context "#initialize" do
		it "is initialized with an empty array" do
			expect(co_ordinates.direction).to be_an_instance_of(Array)
		end

		it "has an initial value of x at 0" do 
			expect(co_ordinates.x_value).to be_equal(0)
		end

		it "has an initial value of y at 0" do
			expect(co_ordinates.y_value).to be_equal(0)
		end
	end
end
