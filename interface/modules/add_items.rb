require './classes/book'
require './classes/label'
require './classes/music_album'
require './classes/genre'

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
    cover_state = gets.chomp.upcase
    if cover_state == 'GOOD'
      cover_state = true
    elsif cover_state == 'BADD'
      cover_state = false
    else
      puts 'Invalid option'
    end
    new_book = Book.new(publish_date, publisher, cover_state)
    label = create_label
    new_book.label = label
    @books << new_book
    puts 'Your book has been created'
  end

  def create_genre
    print 'Enter the album genre: '
    name = gets.chomp
    new_genre = Genre.new(name)

    return @genres.select { |genre| genre.name == name } if @genres.one? { |genre| genre.name == name }

    @genres << new_genre
    new_genre
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
      on_spotify = false
    end
    new_music_album = MusicAlbum.new(publish_date, on_spotify)
    genre = create_genre
    new_music_album.genre = genre
    @music_album << new_music_album
    puts 'The music album was created successfully'
  end
end
