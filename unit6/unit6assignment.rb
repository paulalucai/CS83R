# Project 1: Gradebook Calculator
require_relative 'unit6test'

puts "CS83R Calculator"

begin
	prog_score = 0
	proj_score = 0
	exam_score = 0
	lowest = nil

	i = 1
	for i in 1..15
		print "Enter score: "
		score = gets.chomp
	end
	
	if ( score.start_with? "project\d:" )
	    print "Your Programming Project score was ", sort_score(score, proj_score, exam_score, prog_score, lowest), " (", "%) with the lowest score (", ") being dropped"
	end
	if ( score.start_with? "midterm", score.start_with? "final" )
	    print "Your Exam score was ", sort_score(score, proj_score, exam_score, prog_score, lowest), "(", "%)"
	end
	if ( score.start_with? "project:" )
	    print "Your Project score was ", sort_score(score, proj_score, exam_score, prog_score, lowest), "(", "%)"
	# print "Your Total Course Grade was ", , "=", , "%%. Nice Job!"
	end

rescue

	# print "Sorry Charlie,..."

end