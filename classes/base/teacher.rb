require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(age, name, specialization)
    super(age, name)
    @specialization = specialization
  end

  def use_services?
    true
  end

  def to_s
    "#{super} | #{@specialization.ljust(15)}"
  end
end
