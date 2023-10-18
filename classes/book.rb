require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state, :label

  def initialize(publish_date, publisher, cover_state, _id = Random.rand(1..1000))
    super(publish_date)
    @cover_state = cover_state
    @publisher = publisher
  end

  def can_be_archived?
    return true if super || @cover_state == 'bad'

    false
  end
end
