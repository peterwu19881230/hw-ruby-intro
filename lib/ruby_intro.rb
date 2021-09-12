# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if  arr==nil
    ans=0  
  else
    ans=arr.sum
  end
  
  return ans
end

#puts sum([1,2,3,4,5])
#puts sum([])

def max_2_sum(arr)
  # YOUR CODE HERE
  arr=arr.sort
  arr=arr.reverse()
  
  if arr.length==0
  ans=0
  elsif arr.length==1
    ans=arr[0]
  else
    ans=arr[0]+arr[1]
  end
  
  return ans
end

#puts max_2_sum([])
#puts max_2_sum([3])
#puts max_2_sum([1,2,3,4,5])


def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if  arr==nil or arr==[] or arr.length==1
    ans=false
  else
    ans=false
    arr.sort!
    while arr.length>=2
      element1=arr.pop()
      for element2 in arr do
        if element1+element2==n
          ans=true
        end  
      end
    end
    
  end
  return ans
end

#puts sum_to_n?([],3)
#puts sum_to_n?([3],3)
#puts sum_to_n?([2,2],4)
#puts sum_to_n?([2,2,2],4)
#puts sum_to_n?([1,2,3,4,5],15)

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

#puts hello("Kat")

def starts_with_consonant?(s)
  # YOUR CODE HERE
  return !!(s=~/^[b-df-hj-np-tv-z]/i) # "i" ignores the case sensitivity
end

#puts starts_with_consonant?("Kat")
#puts starts_with_consonant?("oh!")

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if !!(s=~/^[0-9]+$/)
    s=s.to_i
    if s.remainder(4)==0
      ans=true
    else
      ans=false
    end
  else
    ans=false
  end
  
  return ans
end

#puts binary_multiple_of_4?("8")
#puts binary_multiple_of_4?("1000")
#puts binary_multiple_of_4?("1000k")
#puts binary_multiple_of_4?("999")

# Part 3

class BookInStock
# YOUR CODE HERE

  attr_accessor :isbn, :price #https://fullstackheroes.com/ruby/getter-setter/
  def initialize(isbn,price)
    @isbn=isbn
    @price=price
    
    if @isbn=="" or @price<=0
        raise ArgumentError.new("You messed up!")
    end
  end

  def price_as_string
    return "$"+ ('%.2f' % @price).to_s #round(2) doesn't seem to work
  end

  # display method
  def display
    puts "ISBN is: #{@isbn}"
    puts "Price is: #{price_as_string(@price)}"
  end
    
end



