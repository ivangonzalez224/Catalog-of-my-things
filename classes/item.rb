class Item
  attr_accessor :author, :label, :publish_date

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @author = nil
    @label = nil
    @publish_date = publish_date
    @archived = archived = false
  end

  def add_label(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end
end    