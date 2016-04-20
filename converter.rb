# takes a line of pattern and converts to crochet if it's a knit pattern
# and to knit if it's a crochet pattern

#array of knitting needle sizes that have an equivalent crochet hook size
knitnsizeUS = [1,2,3,4,5,6,8,9,10,10.5,11]

# array of crochet hook sizes that have an equivalent knitting needle size
crochethsize = ['B','C','D','E','F','G','H','I','J','K','L']

# a check for edits to size arrays
puts knitnsizeUS.length == crochethsize.length

puts "Is the pattern a knitting pattern or a crochet pattern?"
replypattern = gets.chomp

if replypattern ["knit"]
	puts "What needle size does the pattern require?"
else
	puts "What size hook does the pattern require?"
end
replysize = gets.chomp

knitnsizeUS.each do |i|
	if replysize == knitnsizeUS[i]
			# puts crochethsize[i]
			#replysizeconvert = crochethsize[i]
		puts "The equivalent crochet hook size is..." + "#{crochethsize[i]}"
	end


	# puts "What hook size does the pattern require?"	
	# replysize = gets.chomp	
# loops through knit needle size array to match with what the user put in and
# returns the equivalent crochet hook size from the crochet hook size array or returns 
# warning saying there is no equivalent crochet hook size and suggests either the next larger
# hook or next smaller hook depending on gauge or how tight the person's knitting tends to be
#, the fabric, etc...


			# returns replysize to feed into the suggestion feature code below
			# return replysize
end
# puts "Sorry, there is no equivalent crochet hook size. Hang on a sec for a couple more questions and a suggested hook size."

# if replyconvert["knit"]
# add suggestion feature here....
