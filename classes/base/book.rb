require_relative 'rental'

class Book
  attr_accessor :title, :author, :rentals

  # a 'Book' <has-many> 'Rental's
  # is set with @rentals = []
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, self, person)
  end

  def to_s
    "#{@title.ljust(30)} | #{@author.ljust(25)}"
  end

  def to_rental
    @title
  end
end
