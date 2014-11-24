# program that calculates student fees for those attending Santa Monica college

require_relative 'unit5test'

puts "SMC Fee Calculator"

begin

	print "Is this Fall[0], Winter[1], Spring[2] or Summer[3] session: "
	semester = gets.chomp.to_i

	print "Enter number of units enrolled: "
	units = gets.chomp.to_i

	print "Are you a state resident[0] or not[1]: "
	resident = gets.chomp.to_i

	print "Want a parking decal? [y/n]: "
	decal = gets.chomp

	print "Want an AS sticker? [y/n]: "
	sticker = gets.chomp

	print "Want an ID card? [y/n]: "
	card = gets.chomp

	semester = session_type(semester)
	fees = 0
	fees += (unit_fee( units, resident, fees ) + decal_fee( decal, semester, fees ) + services_fee( sticker, card, semester, fees ))
	fees = '%.2f' % fees
	print "For ", semester, " semester, your total fees are $ ", fees 

rescue

	puts "Sorry, you've entered an incorrect number of units for the semester! Please try again."

end