class Book
  attr_accessor :title, :author, :rentals

  # a 'Book' <has-many> 'Rental's
  # is set with @rentals = []
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end
end
