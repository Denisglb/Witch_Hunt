require 'directionprocess.rb'


describe DirectionProcess do 
	let(:array) { [] }
	let(:directionprocess) { described_class.new(array) }

	describe "#initialize" do
		it "initalizes an array" do
			(expect directionprocess.directions).to be_an_instance_of(Array)
		end

		it "has an intial position at 0" do
			expect(directionprocess.curr_position).to be_equal(0)
		end

		it "initalizes an empty move array" do
			expect(directionprocess.move).to be_empty
		end
	end
end