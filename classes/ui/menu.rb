require_relative '../../modules/ui/menu_options'

class Menu
  include MenuOptions

  def initialize(type)
    @title = get_title(type)
    @options = get_options(type)
    @actions = get_actions(type)
    @selection = nil
  end

  def action
    @actions[@selection]
  end

  def size
    @options.length
  end

  def display
    title = "#{'-' * 20} #{@title} #{'-' * 20}"
    puts title
    puts 'Below you\'ll find the available options'
    puts '-' * title.length
    @options.each_with_index do |option, i|
      puts "  #{i + 1} > #{option}"
    end
    puts '-' * title.length
    print 'Choose one option by entering its number: '
  end

  def input
    gets.chomp.strip
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
    display
    @selection = input
  end
end
