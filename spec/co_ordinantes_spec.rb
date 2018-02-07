require 'co-ordinantes.rb'

describe CoOrdinantes do 
	let (:dir) { [ 90, 180, 0, 270, ]}
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

		it "The final co-ordinates array is empty" do
			expect(co_ordinates.final).to be_an_instance_of(Array)
		end
	end

	context "finding the final co_ordinates" do
		it "filters through the direction array and returns the number of positive x-values" do
			expect(co_ordinates.x_co_ordinantes_positive).to be_equal(1)
			expect{co_ordinates.x_co_ordinantes_positive}.to change{co_ordinates.x_value}.by(1)
		end

		it "filters through the direction array and returns the number of negative x-values" do
			expect(co_ordinates.x_co_ordinantes_negative).to be_equal(-1)
			expect{co_ordinates.x_co_ordinantes_negative}.to change{co_ordinates.x_value}.by(-1)
		end

		it "filters through the direction array and returns the number of positive y-values" do
			expect(co_ordinates.y_co_ordinantes_positive).to be_equal(1)
			expect{co_ordinates.y_co_ordinantes_positive}.to change{co_ordinates.y_value}.by(1)
		end

		it "filters through the direction array and returns the number of negative y-values" do
			expect(co_ordinates.y_co_ordinantes_negative).to be_equal(-1)
			expect{co_ordinates.y_co_ordinantes_negative}.to change{co_ordinates.y_value}.by(-1)
		end
	end
end
