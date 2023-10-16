class Item
  attr_accessor :author, :label, :publish_date

  def initialize(pubish_date)
    @id = Random.rand(1..1000)
    @author = nil
    @label = nil
    @publish_date = pubish_date
    @archived = archived = false
  end

  def add_label(title)
    @label = label.new(title)
  end

  def add_author(author)
    @author = author
    author.item.push(self) unless author.items.include?(self)
  end
end    