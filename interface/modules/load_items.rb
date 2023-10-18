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
      saved_item = @genres.find { |el| el.id == new_album.genre_id }
      new_album.add_genre(saved_item)
      @music_album << new_album
    end
    # puts 'Albums loaded:'
    # @music_album.each_with_index do |album, index|
    #   puts "#{index + 1}) ID: #{album.id}, Publish date: #{album.publish_date}"
    #   puts "Is on spotify: #{album.on_spotify}, Genre: #{album.genre}"
    # end
  end

  def load_books
    return unless File.exist?('data/book.json')

    file = File.read('data/book.json')
    book_hash = JSON.parse(file)
    book_hash.each do |book|
      new_book = Book.new(book['publish_date'], book['publisher'], book['cover_state'], book['id'])
      saved_item = @labels.find { |el| el.id == book['label_id'] }
      new_book.add_label(saved_item)
      @books << new_book
    end
    puts 'Books loaded:'
    @books.each_with_index do |book, index|
      puts "#{index + 1}) ID: #{book.id}, Publish date: #{book.publish_date}"
      puts "publisher: #{book.publisher}, Label: #{book.label}"
    end
  end

  def load_games
    return unless File.exist?('data/game.json')

    file = File.read('data/game.json')
    game_hash = JSON.parse(file)
    game_hash.each do |game|
      new_game = Game.new(game['publish_date'], game['multiplayer'], game['last_played_at'], game['id'])
      saved_game_genre = @genres.find { |el| el.id == game['genre_id'] }
      new_game.add_genre(saved_game_genre)
      saved_game_label = @labels.find { |el| el.id == game['label_id'] }
      new_game.add_label(saved_game_label)
      saved_game_author = @authors.find { |el| el.id == game['author_id'] }
      new_game.add_author(saved_game_author)
      @games << new_game
    end
    puts 'Games loaded:'
    @games.each_with_index do |game, index|
      puts "#{index + 1}) ID: #{game.id}, Publish date: #{game.publish_date}"
      puts "Multiplayer: #{game.multiplayer}, Last Played At: #{game.last_played_at}"
      puts "Label: #{game.label}, Genre: #{game.genre}, Author: #{game.author}"
    end
  end
end
