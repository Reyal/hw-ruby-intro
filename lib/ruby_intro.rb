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
  "Hello, #{name}"
end

def starts_with_consonant? s
  pattern1 = /[a-zA-Z]/ 
  pattern2 = /[^AEIOU]/
  pattern1 =~ s.chr.upcase and pattern2 =~ s.chr.upcase
end

def binary_multiple_of_4? s
  # Matches digits
  #digit_pattern = /[^01]/
  #not 2-9
  #not_2to9 = /[^2-9]/
  #ends in 00
  #div_by_4 = /00$/
  
  #digit_pattern =~ s and not_2to9 =~ s and div_by_4 =~ s
  /^(0*1[01]*00|0)$/ =~ s and /[^01]/
end

# Part 3

class BookInStock
  
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = Float(price)
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    if new_isbn == nil or new_isbn == ""  
      raise ArgumentError.new('The ISBN number cannot be empty')  
    end
    @isbn = new_isbn
  end
  def price ; @price ; end
    
  def price=(new_price)
    if new_price <= 0  
      raise ArgumentError.new('The price must be greater than 0')  
    end
    @price = new_price
  end
  
  def price_as_string
    return sprintf("$%3.2f",@price)
  end
end
