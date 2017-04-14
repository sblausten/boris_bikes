class Bike
attr_accessor :docked

	def initialize
		@working = true
		@docked = true
	end

	def working?
		@working
	end

end
