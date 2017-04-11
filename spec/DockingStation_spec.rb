require 'DockingStation'

describe DockingStation do
 {DockingStation.new}

	it "a) gets a bike, and then b) expects the bike to be working" do
		expect(subject.release_bike.working?).to eq(true)
	end

	it "docks a bike at a docking station" do
		expect(subject.release_bike.working?).to eq(true)
	end

	it "docks a bike at a docking station" do
		expect(subject.release_bike.working?).to eq(true)
	end

	it { expect(subject).to respond_to(:release_bike)}

end

describe DockingStation do
	subject {DockingStation.new}

	it "a) gets a bike, and then b) expects the bike to be working" do
		expect(subject.release_bike.working?).to eq(true)
	end

	it "docks a bike at a docking station" do
		expect(subject.release_bike.working?).to eq(true)
	end

	it "docks a bike at a docking station" do
		expect(subject.release_bike.working?).to eq(true)
	end

	it { expect(subject).to respond_to(:release_bike)}

end
