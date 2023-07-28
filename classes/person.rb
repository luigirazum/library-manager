require_relative 'nameable'
require_relative 'rental'

# ConcreteComponent 'Person' provide default implementations of the operations.
# There might be several variations of these classes.
#  - 'correct_name' method is the operation implementation.
class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  # Add association
  # a 'Person' <has-many> 'Rental's
  # is set with @rentals = []
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def use_services?
    of_age? || @parent_permission
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    @age >= 18
  end
end
