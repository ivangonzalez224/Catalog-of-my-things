require './classes/book'
require './classes/label'

module CreateItems 

  def enter_date
    print 'Enter publish date: '
    publish_date = gets.chomp
  end

  def create_label
    print 'Enter the book label title: '
    title = gets.chomp
    print 'Enter the book color: '
    color = gets.chomp
    new_label = Label.new(title, color)

    if @labels.one?{|el| el.title == title && el.color == color}
      return @labels.select{|el| el.title == title && el.color == color}
    end
    @labels << new_label
    return new_label
  end

  def create_author
    print 'Enter the book author first name : '
    first_name = gets.chomp
    print 'Enter the book author last name: '
    last_name = gets.chomp
    new_author = Author.new(first_name, last_name)
  end

  def add_book
    publish_date = enter_date
    print 'Enter the book publisher: '
    publisher = gets.chomp
    print 'Enter the book cover state: '
    cover_state = gets.chomp
    newBook = Book.new(publish_date, publisher, cover_state)
    label = create_label
    newBook.label = label
    @books << newBook
    puts 'Your book has been created'
  end
end
