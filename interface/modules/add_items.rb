require './classes/book'

module CreateItems 

  def enter_date
    print 'Enter publish date: '
    publish_date = gets.chomp
  end

  def add_book
    publish_date = enter_date
    print 'Enter the book publisher: '
    publisher = gets.chomp
    print 'Enter the book cover state: '
    cover_state = gets.chomp
    newBook = Book.new(publish_date, publisher, cover_state)
    @books << newBook
    puts 'Your book has been created'
  end
end
