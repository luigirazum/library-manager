require_relative 'menu'
require_relative 'screen'
require_relative 'error'

class App
  def initialize
    @screen = Screen.new
    @error = Error.new
  end

  def list_all_books
    puts "Let's execute < List ALL [Book]s >"
  end

  def list_all_persons
    puts "Let's execute < List ALL [Person]s >"
  end

  def create_a_person
    puts "Let's execute < Create a [Person] >"
  end

  def create_a_book
    puts "Let's execute < Create a [Book] >"
  end

  def create_a_rental
    puts "Let's execute < Create a [Rental] >"
  end

  def list_rentals_by_person_id
    puts "Let's execute < List ALL [Rental]s for a given [Person] <id> >"
  end

  def execute(action)
    send(action)
    sleep 3
  end

  def run
    main_menu = Menu.new(:main)

    @screen.clear
    puts '  Welcome to \'Library Manager\' 📗'
    puts '-' * 58
    puts '    - The easy way to Manage your Library. 👍'
    puts "\n"

    loop do
      @screen.clear unless main_menu.first_display?
      @error.set(nil)

      main_menu.run

      break if main_menu.exit?

      execute(main_menu.action) if main_menu.valid_option?

      @error.set('🚨 Please enter a valid option') unless main_menu.valid_option?
      @error.display if @error.exist?
    end

    puts "\n"
    puts '-' * 58
    puts 'Thank you for using \'Library Manager\''
    puts 'Until next time! 👋'
  end
end
