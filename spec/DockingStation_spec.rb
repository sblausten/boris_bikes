require 'DockingStation'


describe DockingStation do

  describe '#release' do
    it "raises error when there are no bikes to be released" do
      expect { subject.release }.to raise_error "oops"
    end
  end

  describe "#dock" do
    bike = Bike.new
    it "docks a bike at a docking station" do
      expect(subject.dock(bike)).to eq([bike])
    end
  end

	it "a) gets a bike, and then b) expects the bike to be working" do
    bike = Bike.new
    subject.bikes << bike
		expect(subject.release.working?).to eq(true)
	end

	it { expect(subject).to respond_to(:release)}

end
