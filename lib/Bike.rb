class Bike
	attr_reader :status

	def initialize
		@status = {working: true, docked: false}
	end

	def docked=(boolean)
		raise ArgumentError, 'Expecting boolean' unless !!boolean == boolean
		@status[:docked] = boolean
	end

	def docked
		@status[:docked]
	end

	def working=(boolean)
		raise ArgumentError, 'Expecting boolean' unless !!boolean == boolean
		@status[:working] = boolean
	end

	def working
		@status[:working]
	end

end
