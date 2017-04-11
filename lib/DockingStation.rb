require './lib/Bike'

class DockingStation
attr_accessor :bikes


	def initialize
		@bikes = []
	end

	def release
		fail "oops" unless @bikes.size > 0
		@bikes.pop
	end

	def dock(bike)
		@bikes << bike
	end

	def inspect

	end

end
