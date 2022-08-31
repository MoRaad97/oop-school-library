require './person'

class Student < Person
  attr_accessor :classroom
  attr_reader :age, :name, :parent_permission

  def initialize(classroom,age, name, parent_permission: true)
    super(age, name, parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
