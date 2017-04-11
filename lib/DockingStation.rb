require './lib/Bike'

class DockingStation
attr_accessor :bikes
attr_accessor :max_capacity

	def initialize
		@bikes = []
		@max_capacity = 20
	end

	def release
		fail "No bikes to release" unless @bikes.size > 0
		@bikes.pop
	end

	def dock(bike)
		fail "No more space" unless @bikes.size < max_capacity
		@bikes << bike 
	end

	def inspect

	end

end
