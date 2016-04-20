# takes a line of pattern and converts to crochet if it's a knit pattern
# and to knit if it's a crochet pattern

#array of knitting needle sizes that have an equivalent crochet hook size; if it's not listed here there's no equivalent crochet hook size
knitnsizeUS = [1,2,3,4,5,6,8,9,10,10.5,11]

# array of crochet hook sizes that have an equivalent knitting needle size
crochethsize = ['B','C','D','E','F','G','H','I','J','K','L']

# array of common textiles used for yarns, single textile only...to be converted to drop-down menu on GUI
yarn = ['acrylic' 'cotton' 'cashmere', 'mohair', 'silk', 'wool']

# array of common yarn blends, to be converted to drop-down menu on GUI
yblend = ['acrylic-cotton', 'silk-cotton']

# a check for edits to size arrays above
puts knitnsizeUS.length == crochethsize.length

puts "Is the pattern a knitting pattern or a crochet pattern?"
replypattern = gets.chomp

if replypattern ["knit"]
	puts "What needle size does the pattern require?"
	# gets.chomp reads needle sizes inputted by user as strings so a conversion of the user's input for needle size to an integer is needed
	# ***only when converting from knit size to crochet size**** to comply with float/integer quality of entries in the knit array.
	#If .to_i is not used, knit size conversion to crochet size below does not execute.
	@replysizeknit = gets.chomp.to_i
	convknit2crochet(@replysizeknit)
else
	# ADD A BLOCK HERE TO HANDLE TYPOS IN USER INPUT, SOMETHING LIKE "if replypattern != "crochet", exit the loop and ask them if they meant 'knit'" 
	# and then bounce them down to the knit array search/match loop
	puts "What size hook does the pattern require?"
	@replysizecrochet = gets.chomp
end


# loops through knit needle size array to match with what the user put in and
# returns the equivalent crochet hook size from the crochet hook size array or returns 
def convknit2crochet(knitsizeUS)
	knitnsizeUS.each_index do |k|
		if @replysizeknit == knitnsizeUS[k]	
			puts "The equivalent crochet hook size is: " + "#{crochethsize[k]}"
		elsif k == -1
		 	return knitsizeUS
		# 		
		end	

	end

# warning saying end of knitnsizeUS array has been reached, the user input needle size was not matched to any entry in the knit size array
# so there is no equivalent crochet hook size....
puts "Sorry, there is no equivalent crochet hook size. Hang on a sec for a couple more questions and a suggested hook size..."


# loops through crochet hook size array to match with what the user put in and
# returns the equivalent knitting needle size.  
crochethsize.each_index do |c|
	if @replysizecrochet == crochethsize[c]
		puts "The equivalent knitting needle size is: " + "#{knitnsizeUS[c]}"
	end
end

puts "What kind of yarn requires the needle size you're trying to convert?"
@replyyarn = gets.chomp
suggest1stnewsize(@replyyarn)

def suggest1stnewsizeinitial(yarn)
	# acrylic and cotton are more stretchy
	# EVENTUALLY SPLIT yarn array into stretch yarns and non-stretch yarns
	if yarn == yarn[0] | yarn == yarn[1]
		if knitnsizeUS.include? (@replysizeknit - 1)
			newknitsize = (@replysizeknit - 1)
			convknit2crochet(newknitsize)
		else
			return nil
		newhooksize = 
			newsize = @replysizeknit - 1

puts "Ok, thank you. Just one more question: do you tend to knit/crochet tightly or loosely?"
@replytight = gets.chomp
finalsizesuggest(@replytight)

def finalsizesuggest(tightness)
	


# based on user's answers, function suggests either the next larger
# hook or next smaller hook depending on gauge or how tight the person's knitting tends to be
#, the fabric, etc...

	


# if replyconvert["knit"]
# add suggestion feature here....
