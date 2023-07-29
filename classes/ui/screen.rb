CLEAR_SCREEN = "\033[H\033[2J".freeze

class Screen
  def clear
    puts CLEAR_SCREEN
  end
end
