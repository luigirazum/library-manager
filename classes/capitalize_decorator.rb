require_relative 'decorator'

# Concrete Decorator 'CapitalizeDecorator' call the wrapped object
# and alter its result in some way.
class CapitalizeDecorator < Decorator
  # Decorators may call parent implementation of the operation
  def correct_name
    @nameable.correct_name.capitalize
  end
end
