class Book
	def initialize(title, author)
		@title = title
		@author = author
	end

	def to_s()
		print "#{@title}-#{author}"
	end

	
	def author
		@author
	end

	def title
		@title
	end
end

class Textbook < Book
	def initialize(title, author, course)
		super(title, author)
		@course = course
	end

	def to_s()
		print "#{@title}-#{@author}-#{@course}"
	end

	def course
		@course
	end
end


