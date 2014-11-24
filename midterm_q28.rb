

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
	
	def initialize(make, model, cost, watts)
		@make = make
		@model = model
		@cost = cost
		@bulb = LightBulb.new(watts, false)
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

	def turnon
		@bulb.turnon
	end

	def turnoff
		@bulb.turnoff
	end

	def to_s
		@bulb.to_s
	end
end

lamp = Lamp.new("Pixar", "Little Lamp", 5.00, 20)
lamp.turnon()
puts lamp

b = LightBulb.new(30, false)
b.turnon()
puts b

fiftyWatt = LightBulb.new(50, false)
fiftyWatt.turnoff()