#write your code here
def add a, b
	a + b
end

def subtract a, b
	a - b
end

def sum array
	sum = 0
	array.each do |i|
		sum +=i
	end
	sum
end

def multiply array
	mult = 1
	array.each do |i|
		mult = mult * i
	end
	mult
end

def power a, b
	a**b
end

def factorial n
	if n == 1 or n == 0
		1
	else
		n * (factorial n-1)
	end
end