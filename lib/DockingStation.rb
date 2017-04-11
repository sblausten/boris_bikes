require './lib/Bike'

MAX_CAPACITY = 20


class DockingStation
attr_accessor :bikes
#attr_accessor :max_capacity

	def initialize
		@bikes = []

	end

private

	def full?
		@bikes.size < MAX_CAPACITY ? true : false
	end

public

	def release
		fail "No bikes to release" unless !@bikes.empty?
		@bikes.pop
	end

	def dock(bike)
		fail "No more space" unless full?
		@bikes << bike
	end

	def inspect

	end

end
