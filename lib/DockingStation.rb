require './lib/Bike'

class DockingStation

	def initialize
		@bike_count = 0
	end

	def release_bike
		if @bike_count >= 1
			Bike.new
			@bike_count -= 1
		elsif @bike_count < 1
			"No bikes! Take the bus mate."
		end
	end

	def dock_bike
		@bike_count += 1
		true
	end

end
