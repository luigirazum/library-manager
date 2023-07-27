require_relative 'nameable'

# The base 'Decorator' class follows the same interface as
# the other components.
class Decorator < Nameable
  attr_accessor :nameable

  # @param [Nameable] nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  private
  # The 'Decorator' delegates all work to the wrapped component.
  def correct_name
    @nameable.correct_name
  end
end
