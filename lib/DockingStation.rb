require './lib/Bike'

class DockingStation
attr_accessor :bikes


	def initialize
		@bikes = []
	end

	def release
		fail "No bikes to release" unless @bikes.size > 0
		@bikes.pop
	end

	def dock(bike)
		fail "No more space" unless @bikes.size < 1
		@bikes << bike 
	end

	def inspect

	end

end
