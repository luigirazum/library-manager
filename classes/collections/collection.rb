class Collection
  attr_accessor :collection

  def initialize(collection = [])
    @collection = collection
  end

  def add_item
    raise NotImplementedError, "🚨 #{self.class} has not implemented method '#{__method__}' yet!"
  end

  def all
    @collection
  end

  def select(index)
    @collection[index]
  end

  def list_all
    puts @collection
  end

  def empty?
    @collection.empty?
  end
end
