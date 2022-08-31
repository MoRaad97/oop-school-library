require './person.rb'

class Teacher < Person
  attr_accessor :specialization
  attr_reader :age, :name, :parent_permission
  def initialize(specialization, age, name, parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
