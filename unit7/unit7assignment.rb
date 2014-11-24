# calculate average, median, and standard deviation from user input

print "Math Calculator\n"
print "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
input_array = gets.chomp

if (input_array == 'Q')
	abort("Bye, bye! :)")
end

if (input_array == 'N')
	input_array = gets.chomp.split(" ")
	int_array = input_array.collect{|i| i.to_i}

	print "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
	input = gets.chomp

	sorted = nil
	len = nil
	
	def median(int_array)
		int_array.sort!
		if (int_array.length % 2 == 1 )
			return int_array[int_array.length / 2.0]
		else
		    return (int_array[int_array.length / 2] + int_array[(int_array.length / 2) - 1]) / 2.0
		end
	end

	def average(int_array)
		total = int_array.inject(:+)
		len = int_array.length
		avg = total.to_f / len
		return avg
	end

	var = 0
	int_array.each do |i|
		m = average(int_array)
      	sum = int_array.inject(0){ |add, i| add + (i - m)**2 }
      	var = sum / (int_array.length - 1).to_f
	end

	def standard_deviation(var)
		return Math.sqrt(var).round(1)
	end
	if (input == 'N')
		input = gets.chomp.split(" ")
		int_array = input.collect{|i| i.to_i}
	end

	if (input == 'A')
		puts average( int_array )
	end

	if (input == 'M')
		puts median( int_array )
	end

	if (input == 'S')
		puts standard_deviation( var )
	end

	if (input == 'C')
		int_array = []
	end
end
