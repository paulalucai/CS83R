# contains functions for CS83R Calculator

def sort_score (score, proj_score, mid_score, final_score, prog_score, lowest)
	if (score.start_with? "project:")
		score = score.scan(/\d+$/).first.to_i
		
		if (score < 0)
			raise "inappropriate negative value for project score"
		elsif (score > 35)
			raise "inappropriately large value for project score"
		end

		proj_score += score

		return proj_score

	elsif (score.start_with? "midterm")
		score = score.scan(/\d+$/).first.to_i
		
		if (score < 0)
			raise "inappropriate negative value for midterm score"
		elsif (score > 100)
			raise "inappropriately large value for midterm score"
		end

		mid_score += score

		return mid_score

	elsif (score.start_with? "final")
		score = score.scan(/\d+$/).first.to_i
		
		if (score < 0)
			raise "inappropriate negative value for final score"
		elsif (score > 100)
			raise "inappropriately large value for final score"
		end

		final_score += score

		return final_score
	else
		score = score.scan(/\d+$/).first.to_i

		if (score < 0)
			raise "inappropriate negative value for project score"
		elsif (score > 15)
			raise "inappropriately large value for project score"
		end

		if (lowest == nil or score < lowest)
			lowest = score
		end

		prog_score += score
		return prog_score, lowest
	end

	prog_score -= lowest
end