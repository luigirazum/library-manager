class Error
  def initialize
    @text = nil
  end

  def set(text)
    @text = text
  end

  def exist?
    !@text.nil?
  end

  def display
    puts "\n"
    puts @text
    sleep 1.5
  end
end
