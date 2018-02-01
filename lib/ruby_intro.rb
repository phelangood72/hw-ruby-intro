# Jonathon Phelan
# CSCE 431
# 623004117

# Part 1

def sum(arr)
	result = 0
	if !arr.empty?
		arr.each {|x| result=result+x}
	end
	return result
end

def max_2_sum arr
	result = 0
	if !arr.empty?
		if arr.length == 1
			result = arr[0]
		else
			arr.sort!{|x,y| y<=>x}
			result = arr[0]+arr[1]
		end
	end
	return result
end

def sum_to_n? arr, n
	if arr.empty?
		return false
	end

	for i in 0..arr.length-2
		for j in i+1..arr.length-1
			if (arr[i]+arr[j]) === n
				return true
			end
		end
	end

	return false
end

# Part 2

def hello(name)
	result = "Hello, " + name
  	return result
end

def starts_with_consonant? s
	if s.empty?
		return false
	elsif s[0].match(/[^aeiouAEIOU]/) && s[0].match(/[[:alpha:]]/)
		return true
	end
end

def binary_multiple_of_4? s
	if s.empty?
		return false
	elsif s.match(/[A-Za-z]/)
		return false
	elsif s.to_i(2) % 4 == 0
	 	return true
	else
	 	return false
	end
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		raise ArgumentError.new("Invalid price") if price <= 0
		raise ArgumentError.new("Invalid isbn") if isbn.empty?
		@isbn = isbn
		@price = price
	end

	def isbn
		@isbn
	end

	def price
		@price
	end

	def isbn=(isbn)
		@isbn = isbn
	end

	def price=(price)
		@price=price
	end

	def price_as_string
		formatted = "%.2f" % @price
		formatted = "$#{formatted}"
	end
end