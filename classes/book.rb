require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state
  def initialize(publish_date, publisher, cover_state)
    super(publish_date)
    @cover_state = cover_state
    @publisher = publisher
  end

  def can_be_archived?
    if super || @cover_state == 'bad'
      return true
    end
    false
  end
end

# book1 = Book.new('12/12/2000', 'brandeson' ,'good')
# puts book1.publisher
# puts book1.publish_date
# puts book1.cover_state
# puts book1.can_be_archived?