#define the class Gadget

class Gadget
	def initialize(make, model, price, height, width, weight, scale)
		@make = make
		@model = model
		@price = price
		@height = height
		@width = width
		@weight = weight
		@scale = scale
	end

	def create()
		print "A $#{@price.to_f.round(2)} #{@model} weighing #{@weight} #{@scale}"
	end

	# accessor methods
	def make
		@make
	end

	def model
		@model
	end

	def price
		@price
	end

	def height
		@height
	end

	def weight
		@weight
	end

	def width
		@width
	end

	attr_accessor :make, :model, :price, :height, :width, :weight, :scale
end

class AppleStore
	@@totalrev = 0
	@@totalsold = 0

	def initialize()
	end

	def revenue_earned
	end

	def products_sold
		print "A store having sold #{@@totalsold} products with revenue of $#{@@totalrev.to_f.round(2)} so far!"
	end

	def createGadget(make, model, price, height, width, weight, scale)
		@@totalsold += 1
		@@totalrev += price
		return Gadget.new(make, model, price, height, width, weight, scale)
	end

end