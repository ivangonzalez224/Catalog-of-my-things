class Label
  attr_accessor :items, :title

  def initialize(title)
    id = Random.rand(1..1000)
    @first_name = first_name
    @items = []
  end
  def add_item(item)
    @items << (item)
    item.Label = self
  end
end