

class LightBulb
	attr_reader :watts, :on
	def initialize(watts, on)
		@watts = watts
		@on = on
	end

	#accessor methods
	def watts
		@watts
	end

	def on
		@on
	end

	# other methods
	def turnon
		@on = true
	end

	def turnoff
		@on = false
	end

	def to_s
		"#{@watts}-#{@on}"
	end
end

class Lamp
	attr_accessor :watts
	def initialize(make, model, cost, watts)
		@make = make
		@model = model
		@cost = cost
		@watts = LightBulb.new(:watts)
	end

	def 

	def make
		@make
	end

	def model
		@model
	end

	def cost
		@cost
	end
end

lamp = Lamp.new("Pixar", "Little Lamp", 5.00, 20)
lamp.turnon()

b = LightBulb.new(30, false)
b.turnon()

fiftyWatt = LightBulb.new(50, false)
fiftyWatt.turnoff()