# contains functions for the SMC Fee Calculator

def session_type ( semester )
	if (semester == 0)
		semester = "Fall"
	elsif (semester == 1)
		semester = "Winter"
	elsif (semester == 2)
		semester = "Spring"
	elsif (semester == 3)
		semester = "Summer"
	end

	return semester
end

def unit_fee ( units, resident, fees )

	# if (semester == 0 or semester == 2)
		if (units < 0 or units > 16)
			raise "inappropriate number of units entered for semester"
		end
	# elsif (semester == 1 or semester == 3)
		# if (units < 0 or units > 8)
			# raise "inappropriate number of units entered for session"
		# end
	 # end

	if (resident == 0)
		fees += (units * 46.00)
	elsif (resident == 1)
		fees += (units * 325.00)
	end

	return fees
end

def decal_fee ( decal, semester, fees )

	if (semester == 0 or semester == 2)
		if (decal == 'y')
			fees += 85.00
		end
	elsif (semester == 1 or semester == 3)
		if (decal == 'y')
			fees += 45.00
		end
	end

	return fees
end

def services_fee ( semester, sticker, card, fees )

	if (semester == 0 or semester == 2)
		fees += 50.50
		if (sticker == 'n')
			fees -= 19.50
		end
		if (card == 'n')
			fees -= 13.00
		end
	elsif (semester == 1 or semester == 3)
		fees += 47.50
		if (sticker == 'n')
			fees -= 19.50
		end
		if (card == 'n')
			fees -= 13.00
		end
	end

	return fees
end