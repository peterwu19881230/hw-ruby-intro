puts "program starts..."

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


mybook=BookInStock.new("00011100",123)
puts mybook.isbn

#mybook=BookInStock.new("",123)

mybook=BookInStock.new("00011100",33.95)
puts mybook.price_as_string()



