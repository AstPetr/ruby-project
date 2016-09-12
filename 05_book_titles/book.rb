class Book
# write your code here
def title
	@title
end


def title=(str)
	strb = ""
	index = 0
	str.split.each do |a|
		if islword?(a, index)
			strb= strb + a + " "
		else
			strb= strb + a.capitalize + " "
		end
		index +=1
	end
	@title = strb.chop
end

private 

def islword? a, index
	array = ["and", "of", "or", "by", "if", "the", "a", "over", "under", "to", "with", "a", "an", "in"]
	answ = false
	array.each do |i|
		if i == a and index > 0
			answ = true
			break
		end
	end
	answ
end

end
