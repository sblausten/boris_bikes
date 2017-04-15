require 'Bike'

describe Bike do
	describe '#new' do
		it "Defaults new bike instance to hash where :working == true && :docked == false" do
			expect(subject.working).to eq(true)	
			expect(subject.docked).to eq(false)	
		end
	end
	it { expect(Bike.new).to respond_to(:working)}

end
