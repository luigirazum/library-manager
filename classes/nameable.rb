# The base `Nameable` interface defines operations that
# can be altered by decorators.
class Nameable
  def correct_name
    raise NotImplementedError, "🚨 #{self.class} has not implemented method '#{__method__}' yet!"
  end
end
