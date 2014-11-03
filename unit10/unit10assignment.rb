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

	def products_sold
		print "A store having sold #{@@totalsold} products with revenue of $#{@@totalrev.to_f.round(2)} so far!"
	end

	def createGadget(make, model, price, height, width, weight, scale)
		@@totalsold += 1
		@@totalrev += price
		return Gadget.new(make, model, price, height, width, weight, scale)
	end

	def createiPhone(model)
		@price = 0
		@@totalsold += 1
		if (model == :iPhone5S)
			@@totalrev += 99.00
			return IPhone5S.new
		elsif (model == :iPhone6)
			@@totalrev += 199.00
			return IPhone6.new
		elsif (model == :iPhone6Plus)
			@@totalrev += 299.00
			return IPhone6Plus.new
		end 
	end
end

class IPhone5S < Gadget
	def initialize
		super(:iPhone, :iPhone5S, 99.00, 4.87, 3.95, 2.31, :ounces)
	end

	def to_s
		print "A $99.00 iPhone 5S weighing 3.95 ounces"
	end
end

class IPhone6 < Gadget
	def initialize
		super(:iPhone, :iPhone6, 199.00, 5.44, 4.55, 2.64, :ounces)
	end

	def to_s
		print "A $199.00 iPhone 6 weighing 4.55 ounces"
	end
end

class IPhone6Plus < Gadget
	def initialize
		super(:iPhone, :iPhone6Plus, 299.00, 6.22, 6.07, 3.06, :ounces)
	end

	def to_s
		print "A $299.00 iPhone 6 Plus weighing 6.07 ounces"
	end
end