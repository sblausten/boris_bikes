require './lib/Bike'

DEFAULT_CAPACITY = 20


class DockingStation
attr_accessor :bikes, :capacity

	def initialize(capacity = DEFAULT_CAPACITY)
		raise ArgumentError, "Expecting int" unless (capacity.is_a? Integer) || (capacity.is_a? Float)
		@bikes = []
		if capacity.is_a? Integer
			@capacity = capacity
		elsif capacity.is_a? Float
			@capacity = capacity.round
		end
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

private

	def full?
		@bikes.size < @capacity ? true : false
	end

end
