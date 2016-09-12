#write your code here
def echo n
	n
end

def shout n
	n.upcase
end

def repeat n, *t
	if t.empty?
		"#{n} #{n}"
	else
		t = t[0]
		n = n + " "
		(n * t).chomp(" ")
	end
end

def start_of_word a, n
	a[0..n-1]
end

def first_word n
	n.split[0]
end

# def titleize n
# 	str = ""
# 	n.split.each { |a| str= str + a.capitalize + " "  }
# 	str.chop
# end

def titleize n
	str = ""
	index = 0
	n.split.each do |a|
		if !islword?(a, index)
			str= str + a.capitalize + " "
		else
			str= str + a + " "
		end
		index +=1
	end
	str.chop
end

def islword? a, index
	array = ["and", "of", "or", "by", "if", "the", "a", "over", "under", "to", "with"]
	answ = false
	array.each do |i|
		if i == a and index > 0
			answ = true
			break
		end
	end
	answ
end
