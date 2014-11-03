# Project 1: Histogram
# Creates a Ruby program which reads a string of info and uses a Hash to keep track of
# letter frequencies and then displays a Histogram using this frequency info

# prompt the user for input
print "Enter Data: "
input = gets.chomp.upcase

# separates the input by letters
letters = input.split("")

# new Hash object containing the letters and sorting them by frequency
frequencies = Hash.new(0)
letters.each { |letter| frequencies[letter] += 1 }
frequencies = frequencies.sort_by {|freq, letter| letter}

# loop to output the letters included, the frequency, and the asterisk histogram
frequencies.each do |letter, freq|
	puts letter + " - " + freq.to_s + " - " + '*'*freq
end