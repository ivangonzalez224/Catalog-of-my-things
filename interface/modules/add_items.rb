require './classes/book'
require './classes/music_album'
require './classes/genre'
require './classes/author'
require './classes/game'
require './classes/label'
require_relative 'add_category'

module CreateItems
  include CreateCategory
  def add_book
    print 'Enter publish date: '
    publish_date = gets.chomp
    print 'Enter the book publisher: '
    publisher = gets.chomp
    cover_state = book_cover_state
    label = create_label
    new_book = Book.new(publish_date, publisher, cover_state)
    new_book.add_label(label)
    puts new_book.label.id
    @books << new_book
    puts 'Your book has been created'
  end

  def book_cover_state()
    loop do
      print 'Enter the book cover state (good/bad): '
      cover_state_input = gets.chomp.upcase
      if cover_state_input == 'GOOD'
        return true
      elsif cover_state_input == 'BAD'
        return false
      else
        puts 'Invalid option. Please enter "good" or "bad".'
      end
    end
    cover_state
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
    genre = create_genre
    new_music_album = MusicAlbum.new(publish_date, on_spotify, genre.id, genre.name)
    new_music_album.genre_name = genre.name
    new_music_album.add_genre(genre)

    @music_album << new_music_album
    puts 'The music album was created successfully'
  end

  def add_game
    print 'Enter the game\'s publish date: '
    publish_date = gets.chomp
    multiplayer = multiplayer_input
    print 'Enter the date when it was last played at: '
    last_played_at = gets.chomp
    author = create_author
    genre = create_genre
    label = create_label
    new_game = Game.new(publish_date, multiplayer, last_played_at)
    new_game.add_author(author)
    new_game.add_genre(genre)
    new_game.add_label(label)
    @games << new_game
    puts 'The game was created successfully'
  end

  def multiplayer_input
    print 'Is it a multiplayer game? (yes, no): '
    multiplayer = gets.chomp
    if multiplayer == 'yes'
      multiplayer = true
    elsif multiplayer == 'no'
      multiplayer = false
    else
      puts 'Invalid option'
      multiplayer = false
    end
    multiplayer
  end
end
