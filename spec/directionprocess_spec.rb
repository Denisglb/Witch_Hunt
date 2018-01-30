require 'directionprocess.rb'


describe DirectionProcess do 
	let(:dir) { [] }
	let(:directionprocess) { described_class.new(dir) }

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

	describe "#pointing" do 
		context "look left" do
			let(:dir) { ["left"]}
			it "updated the current direction to point left" do
				directionprocess.pointing
				expect(directionprocess.curr_position).to eq 270
			end
		end
		context "look right" do
			let(:dir) { ["right"]}
			it "updated the current direction to point right" do
				directionprocess.pointing
				expect(directionprocess.curr_position).to eq 90
			end 
		end
		context "updates position" do
			let(:dir) { ["right", "left"]}
			it "updated the current direction from right left" do
				directionprocess.pointing
				expect(directionprocess.curr_position).to eq 0
			end 
		end
		context "updates position for full circle" do
			let(:dir) { ["left", "left","left", "left"]}
			it "updated the current direction from moving left 4 times" do
				directionprocess.pointing
				expect(directionprocess.curr_position).to eq 0
			end 
		end
		context "moves forward to the right" do
			let(:dir) { ["right", "forward"]}
			it "moves forward to the right" do
				directionprocess.pointing
				expect(directionprocess.move).to eq ([["forward", 90]])
			end 
		end
	end
end