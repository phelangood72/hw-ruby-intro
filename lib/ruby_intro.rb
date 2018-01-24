# When done, submit this entire file to the autograder.

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
	end
	return result
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
	result = "Hello, " + name
  	return result
end

def starts_with_consonant? s
	if s.empty?
		puts 1
		return false
	elsif s[0].downcase.match(/[aeiou]/)
		puts 2
		return false
	elsif s[0].match(/[[:alpha]]/)
		puts 3
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
# YOUR CODE HERE
end