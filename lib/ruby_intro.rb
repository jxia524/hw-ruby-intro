# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0;
  for i in arr
    sum += i;
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  else
    return arr.max(2)[0] + arr.max(2)[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  prevSums = {}
  for i in arr
    if prevSums.key?(i)
      return true
    else
      prevSums[n-i] = 0
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return s.match(/^[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.match(/^[0-1]+$/)
    if s.to_i(2) % 4 == 0
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.length() <= 0 || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    if isbn.length() <= 0
      raise ArgumentError
    end
    @isbn = isbn
  end
  
  def price
    @price
  end
  
  def price=(price)
    if price <= 0
      raise ArgumentError
    end
    @price = price
  end
  
  def price_as_string
    return "$" + "%.2f" % @price
  end
end
