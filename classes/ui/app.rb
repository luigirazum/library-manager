require_relative 'menu'
require_relative 'screen'
require_relative 'error'
require_relative '../collections/books_collection'
require_relative '../collections/persons_collection'
require_relative '../collections/rentals_collection'

class App
  def initialize
    @screen = Screen.new
    @error = Error.new
    @books = BooksCollection.new
    @persons = PersonsCollection.new
    @rentals = RentalsCollection.new
  end

  def list_all_books
    puts "#{'-' * 20} < List ALL [Book]s > #{'-' * 20}\n"

    puts "\n✋ There are no [Book]s" if @books.empty?
    @books.list_all
  end

  def list_all_persons
    puts "#{'-' * 27} < List ALL [Person]s > #{'-' * 27}\n"

    puts "\n✋ There are no [Person]s" if @persons.empty?
    @persons.list_all
  end

  def create_a_person
    persons_menu = Menu.new(:persons)

    loop do
      @screen.clear unless persons_menu.first_display?
      @error.set(nil)

      persons_menu.run

      break if persons_menu.exit?

      @persons.add_item(persons_menu.action) if persons_menu.valid_option?

      @error.set('🚨 Please enter a valid option') unless persons_menu.valid_option?
      @error.display if @error.exist?
    end
  end

  def create_a_book
    puts "#{'-' * 20} < Create a [Book] > #{'-' * 20}\n"
    @books.add_item
  end

  def create_a_rental
    puts "#{'-' * 20} < Create a [Rental] > #{'-' * 20}\n"

    if @persons.empty?
      puts "\n✋ There are no [Person]s who could Rent."
      return
    end

    if @books.empty?
      puts "\n✋ There are no [Book]s to Rent."
      return
    end

    @rentals.add_item(@books, @persons)
  end

  def list_rentals_by_person_id
    puts "#{'-' * 20} < List ALL [Rental]s for a given [Person] <id> > #{'-' * 20}\n"

    if @persons.empty?
      puts "\n✋ There are no [Person]s to List their Rentals."
      return
    end

    list_all_persons
    puts "\n\n"

    input = Input.new
    id = input.get('\'id\'')
    @persons.list_rentals_by_person_id(id.to_i)
  end

  def execute(action)
    @screen.clear
    send(action)
    sleep 2
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
