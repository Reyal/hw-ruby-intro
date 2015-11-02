# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |value|
    sum += value
  end
  return sum
  
end

def max_2_sum arr

  if arr.empty? then return 0 end
  if arr.length == 1 then return arr[0] end
  temp_arr = arr.sort
  return temp_arr[-1] + temp_arr[-2]
  
end

def sum_to_n? arr, n
  arr.each_index do |a|
    arr_elem = arr[a]
    # print arr_elem
    temp_arr = arr.dup
    temp_arr.delete_at(a)
    #print temp_arr
    #print arr
    sum_arr = temp_arr.map {|b| b + arr_elem}
    print sum_arr
    if sum_arr.include?(n) then return true end
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
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  def price ; @price ; end
    
  def price=(new_price) ; @price = new_price ; end
  
  def price_as_string
    return sprintf("$%3.2f",@price)
  end
end
