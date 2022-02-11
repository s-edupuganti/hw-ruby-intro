# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  maxSum = 0
  
  if (arr.empty?)
    return maxSum
  elsif (arr.length() == 1)
    return arr.sum
  else
    maxSum = arr.sort[-1] + arr.sort[-2]
    return maxSum
  end
    
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  
  if (arr.length() <= 1) 
    return false
  end
  
  arr.each_with_index do |val_1, i|
    arr[i+1..-1].each do |val_2|
      if (val_1 + val_2 == n)
        return true
      end
    end
  end
  
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return ("Hello, " + name)
end

def starts_with_consonant? s
  # YOUR CODE HERE
  
  if s.empty?
    return false 
  end
  
  firstChar = s.chars.first.downcase
  

  if firstChar == 'a' || firstChar == 'e' || firstChar == 'i' || firstChar == 'o' || firstChar == 'u' || /[a-z]/i.match(firstChar) == nil
    return false
  end
  
  
  return true
  
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  elsif s =~ /[^01]/
  elsif (s.to_i(2) % 4 == 0)
      return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError.new("ISBN Number is an empty string!")
    elsif price <= 0
      raise ArgumentError.new("Price is less than or equal to zero!")
    end
    
    @isbn = isbn
    @price = price 
    
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
    
    def price_as_string
      
      return ("$" + sprintf("%.2f",price.round(2).to_s))
      
    end
    
      
end
