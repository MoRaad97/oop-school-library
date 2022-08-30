require 'person'

class Student < Person
  attr_reader :classroom

  def initialize(classroom, _age, _name, _parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end

end
