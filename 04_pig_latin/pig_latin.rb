#write your code here
def translate n
b = 1
arraytr = []
	array = n.split
	array.each do |a|
		b = translateWord a
		arraytr.push b
	end
	arraytr.join(" ")
end

def translateWord n 

	if isVowel?(n[0])
		word = n + "ay"
	

	elsif isConsonant?(n[0])
		
		word = Consonant n

	end
	
	word

end

def isVowel? l
	array = ["a", "e", "i", "o", "u", "y"]
	answ = false
	array.each do |i|
		if l == i
			answ = true
			break
		end
	end
	answ
end

def isConsonant? l
	array = ["b", "k", "d", "m", "p", "t", "v", "g", "c", "h", "f", "n", "r", "b", "z", "l", "s", "q"]
	answ = false
	array.each do |i|
		if l == i
			answ = true
			break
		end
	end
	answ
end

def Consonant n
	i = 0
	while isConsonant?(n[i]) do
		if n[i..i+1] == "qu"
			i += 2
		else
			i += 1 
		end
		
	end

	word = n[i..-1] + n[0..(i-1)] + "ay"
end
