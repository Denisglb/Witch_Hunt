require_relative '../lib/WhichHunt'

describe WitchHunt do
	let(:whitchhunt) { described_class.new }
	
	describe "#directions" do
		
		context "when communicating with external source recieve an Array" do
		  	
		  	it "should return a set of data" do
		    	expect(subject.directions).to be_an_instance_of(Array)
		  	end
		  	
		  	it "bring back data" do
		  		expect(subject.directions).not_to be_empty 
			end
		end
	end
end

# Testing for page 200 erorrs 
# Think about adding an if there api is broken then add a break in the programme
