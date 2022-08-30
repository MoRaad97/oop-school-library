require 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(specialization, _age, _name, _parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
