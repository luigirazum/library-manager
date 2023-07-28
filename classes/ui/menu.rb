require_relative '../../modules/ui/menu_options'
require_relative 'input'
require_relative 'screen'
require_relative 'error'

class Menu
  include MenuOptions

  def initialize(type, custom_options = [])
    @title = get_title(type)
    @options = get_options(type, custom_options)
    @actions = get_actions(type)
    @selection = nil
  end

  def action
    return @selection if @actions == :select

    @actions[@selection]
  end

  def size
    @options.length
  end

  def display
    title = "#{'-' * 20} #{@title} #{'-' * 20}"
    puts title unless @title.is_a? Array

    puts @title if @title.is_a? Array

    puts 'Below you\'ll find the available options'
    puts '-' * 82
    @options.each_with_index do |option, i|
      puts "  #{i + 1} > #{option}"
    end
    puts '-' * 82
    print 'Choose one option by entering its number: '
  end

  def valid_option?
    return false if @selection.to_i.zero?

    range = (1..@options.length)

    range.include? @selection.to_i
  end

  def first_display?
    @selection.nil?
  end

  def exit?
    @selection.to_i == size
  end

  def run
    input = Input.new
    display
    @selection = input.get
  end

  def select(title = nil)
    @title = title unless title.nil?

    screen = Screen.new
    error = Error.new

    screen.clear
    loop do
      screen.clear unless first_display?
      error.set(nil)

      run

      break if exit?

      return action if valid_option?

      error.set('🚨 Please enter a valid option') unless valid_option?
      error.display if error.exist?
    end
  end
end
