require_relative 'nameable'

# ConcreteComponent 'Person' provide default implementations of the operations.
# There might be several variations of these classes.
#  - 'correct_name' method is the operation implementation.
class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  def use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
