class Rental
  attr_reader :book, :person
  attr_accessor :date

  # Add associations
  #  - a 'Rental' <belongs-to> a 'Book'
  #    * is set with @book = book
  #  - a 'Rental' <belongs-to> a 'Person'
  #    * is set with @person = person
  def initialize(date, book, person)
    @date = date
    @book = book
    @book.rentals << self unless @book.rentals.include?(self)
    @person = person
    @person.rentals << self unless @person.rentals.include?(self)
  end
end
