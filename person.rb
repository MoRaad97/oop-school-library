class Person
  attr_accessor :name, :age
  def initialize(age, name = 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    true if @age > 18
  end

  public

  def can_use_services?
    of_age?
  end
end
