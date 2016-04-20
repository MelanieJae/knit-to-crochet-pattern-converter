# takes a line of pattern and converts to crochet if it's a knit pattern
# and to knit if it's a crochet pattern

#array of knitting needle sizes that have an equivalent crochet hook size
knitnsizeUS = [1,2,3,4,5,6,8,9,10,10.5,11]

# array of crochet hook sizes that have an equivalent knitting needle size
crochethsize = ['B','C','D','E','F','G','H','I','J','K','L']

puts knitnsizeUS[0]
puts crochethsize[0]
puts knitnsizeUS.length == crochethsize.length

print "Is the pattern a knitting pattern or a crochet pattern?"
replypattern = gets.chomp


if replypattern["knit"]
	#this does not take gauge difference into account, assumes user is following pattern and gauge
	#requirements exactly
	puts "What needle size does the pattern require?"
	
else
	puts "What hook size does the pattern require"
end

replysize = gets.chomp