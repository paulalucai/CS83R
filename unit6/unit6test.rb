# contains functions for CS83R Calculator

def sort_score (score, proj_score, exam_score, prog_score, lowest)
	if (score.start_with? "project:")
		score = score.scan(/\d+$/).first.to_i
		
		if (score < 0)
			raise "inappropriate negative value for project score"
		elsif (score > 35)
			raise "inappropriately large value for project score"
		end

		proj_score += score

		return proj_score

	elsif (score.start_with? "final")
		score = score.scan(/\d+$/).first.to_i
		
		if (score < 0)
			raise "inappropriate negative value for exam score"
		elsif (score > 100)
			raise "inappropriately large value for exam score"
		end

		exam_score += score

		return exam_score

	elsif (score.start_with? "midterm")
		score = score.scan(/\d+$/).first.to_i
		
		if (score < 0)
			raise "inappropriate negative value for exam score"
		elsif (score > 100)
			raise "inappropriately large value for exam score"
		end

		exam_score += score

		return exam_score

	else
		score = score.scan(/\d+$/).first.to_i

		if (score < 0)
			raise "inappropriate negative value for project score"
		elsif (score > 15)
			raise "inappropriately large value for project score"
		end

		prog_score += score
		prog_score -= find_low(score, lowest)
		return prog_score
	end

end

def find_low (score, lowest)
	if ( score =~ /project\d+:/ )
		if (lowest == nil or score < lowest)
			lowest = score
			return lowest
		end
	end
end