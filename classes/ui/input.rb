class Input
  def initialize(format = nil)
    @format = format
    @input = nil
  end

  def valid_input?
    return true if @format.nil?

    !@input.nil?
  end

  def get(name = nil)
    print "Please type the #{name}: " unless name.nil?

    @input = gets.chomp.strip
  end
end
