require_relative 'collection'
require_relative '../base/book'
require_relative '../ui/input'

class BooksCollection < Collection
  def initialize(collection = [])
    super(collection)
  end

  def add_item
    input = Input.new
    title = input.get('Book Title')
    author = input.get('Book Author')
    puts "\n"
    book = Book.new(title, author)
    @collection << book
    puts '-' * 62
    sleep 0.5
    puts "The [Book] '#{title}' was succefully created ✅"
    sleep 1
  end

  def list_all
    return if empty?

    puts "\n"
    puts "#{'Title'.ljust(30)} | #{'Author'.ljust(25)}"
    puts '-' * 62
    super
  end
end
