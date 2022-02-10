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
  
  if (arr.length() == 1) 
    return false
  end
  
 
  
  

  sum = 0
  for i in arr do
    for j in (1..arr.size) do
      sum = arr[i] + arr[j]
    
      if (sum == n)
        return true
      end
    end
  end
  
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
