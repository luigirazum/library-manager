require_relative 'decorator'

# Concrete Decorator 'TrimmerDecorator' call the wrapped object
# and alter its result in some way.
class TrimmerDecorator < Decorator
  # Decorators may call parent implementation of the operation
  # 'correct_name' trims the output to 10 chars maximum
  def correct_name
    return @nameable.correct_name[0, 10] unless @nameable.correct_name.size >= 10

    @nameable.correct_name
  end
end
