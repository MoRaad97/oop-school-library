class Rental
  attr_accessor :date, :person, :book
  def initialize(date, person, book)
    @date = date
    @person = person
    @book = book
  end

 def book=(book)
    @book = book
    @book.rentals << self unless book.rental.include?(self)
  end
  
  def person=(person)
    @book = book
    @book.rentals << self unless book.rental.include?(self)
  end
  
end