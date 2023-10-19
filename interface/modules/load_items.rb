require 'json'
require './classes/music_album'
require './classes/book'
require './classes/game'

module LoadItems
  def load_music_album
    return unless File.exist?('data/music_album.json')

    file = File.read('data/music_album.json')
    album_hash = JSON.parse(file)
    album_hash.each do |album|
      new_album = MusicAlbum.new(album['publish_date'], album['on_spotify'], album['genre_id'], album['genre_name'],
                                 album['id'])
      search_categories(album['label_id'], new_album.genre_id, album['author_id'], new_album)
      @music_album << new_album
    end
  end

  def load_books
    return unless File.exist?('data/book.json')

    file = File.read('data/book.json')
    book_hash = JSON.parse(file)
    book_hash.each do |book|
      new_book = Book.new(book['publish_date'], book['publisher'], book['cover_state'], book['id'])
      search_categories(book['label_id'], book['genre_id'], book['author_id'], new_book)
      @books << new_book
    end
  end

  def load_games
    return unless File.exist?('data/game.json')

    file = File.read('data/game.json')
    game_hash = JSON.parse(file)
    game_hash.each do |game|
      new_game = Game.new(game['publish_date'], game['multiplayer'], game['last_played_at'], game['id'])
      search_categories(game['label_id'], game['genre_id'], game['author_id'], new_game)
      @games << new_game
    end
  end

  def search_categories(label_id, genre_id, author_id, item)
    saved_label = @labels.find { |el| el.id == label_id }
    item.add_label(saved_label)
    saved_genre = @genres.find { |el| el.id == genre_id }
    item.add_genre(saved_genre)
    saved_author = @authors.find { |el| el.id == author_id}
    item.add_author(saved_author)
  end
end
