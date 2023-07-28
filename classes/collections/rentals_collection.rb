require_relative 'collection'
require_relative '../base/rental'
require_relative '../ui/menu'
require_relative '../ui/input'
require_relative '../ui/screen'

class RentalsCollection < Collection
  def initialize(collection = [])
    super(collection)
  end

  def add_a_rental(book, person)
    screen = Screen.new
    screen.clear
    puts "#{'-' * 29} < Create a [Rental] > #{'-' * 29}\n"
    puts "  Book: #{book}"
    puts "  Person: #{person}"
    puts "\n"
    print '  '
    input = Input.new
    date = input.get('Rental Date (YYYY/MM/DD)')
    puts "\n"
    rental = Rental.new(date, book, person)
    @collection << rental
    puts '-' * 82
    sleep 0.5
    puts "The [Rental] on '#{date}' was succefully created ✅"
    sleep 1
  end

  def add_item(books, persons)
    header = [
      "#{'-' * 29} < Create a [Rental] > #{'-' * 29}\n",
      "\n",
      'Select the [Book] from the list',
      ('-' * 82)
    ]
    books_menu = Menu.new(:custom, books.all)
    selected_book = books_menu.select(header)
    return nil if selected_book.nil?

    header.pop
    header.pop
    header << 'Select a [Person] from the list'
    header << ('-' * 82)
    persons_menu = Menu.new(:custom, persons.all)
    selected_person = persons_menu.select(header)
    return nil if selected_book.nil?

    book = books.select(selected_book.to_i - 1)
    person = persons.select(selected_person.to_i - 1)
    add_a_rental(book, person)
  end
end
