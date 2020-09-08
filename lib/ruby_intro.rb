# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
    sum = 0
  arr.each do |x| 
    sum += x
  end
  return sum
end

def max_2_sum arr
 max_2_sum = 0
  arr.sort!
  if arr.length == 0
    max_2_sum = 0;
  elsif arr.length == 1
    max_2_sum = arr[0]
  else
    max_2_sum = arr[-1] + arr[-2]
  end
  return max_2_sum
end

def sum_to_n? arr, n
  return false if arr.empty? && n.zero?
  arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  str = "Hello, " + name
  return str
end

def starts_with_consonant? s
  if /^[^AEIOUaeiou\W]/i.match(s) == nil
   return false
  else 
   return true
  end
end


def binary_multiple_of_4?(s)
  if(s.eql?("0"))
    return true
  end
  if(s.match(/[^0-1]/))
    return false
  else
    if(s.match(/^[10]*00$/))
      return true
    else
      return false
    end
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
    def initialize(isbn, price)
        if(isbn.empty?)
            raise ArgumentError, 'Argument is not valid'
        end
        if(price <= 0)
            raise ArgumentError, 'Argument is not valid'
        end
        @isbn = isbn
        @price = price
    end
    def price_as_string
        format("$%.2f", @price)
    end
end