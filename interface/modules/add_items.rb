require './classes/book'
require './classes/label'
require './classes/music_album'

module CreateItems
  def create_label
    print 'Enter the book label title: '
    title = gets.chomp
    print 'Enter the book color: '
    color = gets.chomp
    new_label = Label.new(title, color)

    if @labels.one? { |el| el.title == title && el.color == color }
      return @labels.select { |el| el.title == title && el.color == color }
    end

    @labels << new_label
    new_label
  end

  def create_author
    print 'Enter the book author first name : '
    first_name = gets.chomp
    print 'Enter the book author last name: '
    last_name = gets.chomp
    new_author = Author.new(first_name, last_name)
    puts new_author
  end

  def add_book
    print 'Enter publish date: '
    publish_date = gets.chomp
    print 'Enter the book publisher: '
    publisher = gets.chomp
    print 'Enter the book cover state (good/bad): '
    cover_state = nil
    loop do
      print 'Enter the book cover state (good/bad): '
      cover_state_input = gets.chomp.upcase
  
      if cover_state_input == 'GOOD'
        cover_state = true
        break
      elsif cover_state_input == 'BAD'
        cover_state = false
        break
      else
        puts 'Invalid option. Please enter "good" or "bad".'
      end
    end
    new_book = Book.new(publish_date, publisher, cover_state)
    label = create_label
    new_book.label = label
    @books << new_book
    puts 'Your book has been created'
  end

  def add_music_album
    print 'Enter the music album publish date: '
    publish_date = gets.chomp
    print 'Is the album on spotify? (Y/N): '
    on_spotify = gets.chomp.upcase
    if on_spotify == 'Y'
      on_spotify = true
    elsif on_spotify == 'N'
      on_spotify = false
    else
      puts 'Invalid option'
    end
    new_music_album = MusicAlbum.new(publish_date, on_spotify)
    @music_album << new_music_album
    puts 'The music album was created successfully'
    puts @music_album
  end
end
