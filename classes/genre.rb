class Genre
  attr_accessor :names, :items
  attr_reader :id

  def initialize(names)
    @id = Random.rand(1..1000)
    @names = names
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
