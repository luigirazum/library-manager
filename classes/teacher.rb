require_relative 'person'

class Teacher < Person
  def initialize(age, name, specialization)
    super(age, name)
    @specialization = specialization
  end

  def use_services?
    true
  end
end
