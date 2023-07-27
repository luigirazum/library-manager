class Rental
  attr_reader :book
  attr_accessor :date

  # Add association
  #  - a 'Rental' <belongs-to> a 'Book'
  #    * is set with @book = book
  def initialize(date, book)
    @date = date
    @book = book
    @book.rentals << self unless @book.rentals.include?(self)
  end
end
