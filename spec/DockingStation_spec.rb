require 'DockingStation'


describe DockingStation do
  describe '#new' do
    context 'Parameter validation' do
      subject {DockingStation}
      it "only takes 1 argument" do
        expect(subject).to respond_to(:new).with(1).arguments
      end
      it "It takes an integer argument" do
        expect {subject.new(10)}.to_not raise_error
      end
      it "It gives user error message when passing parameter that 
          does not represent a valid int or float" do
        expect {subject.new('teddy')}.to raise_error(ArgumentError, "Expecting int")
      end
    end

    context 'Assigning @capacity' do
      subject {DockingStation}
      it "It  writes the argument it is passed as an integer to @capacity" do
        station = subject.new(5)
        expect(station.capacity).to eq 5
      end
      it "It rounds any Float parameter to nearest integer and assigns to @capacity" do
        station = subject.new(2.7)
        expect(station.capacity).to eq 3
      end
      it "It sets @capacity to DEFAULT_CAPACITY if no argument passed" do
        station = subject.new
        expect(station.capacity).to eq DEFAULT_CAPACITY
      end
    end
  end

  describe '#release' do
    it "It raises error when there are no bikes to be released" do
      expect {subject.release}.to raise_error "No bikes to release"
    end
    it "It a) gets a bike, and then b) expects the bike to be working" do
      bike = Bike.new
      subject.bikes << bike
      expect(subject.release.working?).to eq(true)
    end
  end

  describe "#dock" do
    bike = Bike.new
    it "It docks a bike at a docking station" do
      expect(subject.dock(bike)).to eq([bike])
    end
    it "It won't accept more bikes than station's maximum capacity which is 20 bikes" do
      subject.capacity.times{ bike = Bike.new
                          subject.bikes << bike }
      expect{subject.dock(bike)}.to raise_error "No more space"
    end

  end

end
