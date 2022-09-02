require './nameable.rb'
require './rental.rb'
class Person < Nameable
  attr_reader :id 
  attr_accessor :name, :age, :rentals
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
     Rental.new(date, self, book)
  end

  private

  def of_age?
    true if @age > 18
  end
end
