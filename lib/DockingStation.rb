require './lib/Bike'

DEFAULT_CAPACITY = 20


class DockingStation
attr_accessor :bikes, :capacity

	def initialize(capacity = DEFAULT_CAPACITY)
		unless (capacity.is_a? Integer) || (capacity.is_a? Float)
			raise ArgumentError, "Expecting int" 
		end
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
		fail "Bike not working" if @bikes.last[:working] == false  
		@bikes.pop
	end

	def dock(bike, condition=true)
		fail "No more space" unless full?
		bike.working = condition
		bike.docked = true
		@bikes << bike.status
	end

private

	def full?
		@bikes.size < @capacity ? true : false
	end

end
