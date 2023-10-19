require 'json'
require './classes/music_album'
require './classes/book'
require './classes/game'

module SaveItems
  def save_music_album
    File.open('./data/music_album.json', 'w') do |file|
      file.puts @music_album.map { |album|
        { 'id' => album.id,
          'publish_date' => album.publish_date,
          'on_spotify' => album.on_spotify,
          'genre_name' => album.genre_name,
          'genre_id' => album.genre_id,
          'label_id' => album.label.id,
          'author_id' => album.author.id }
      }.to_json
    end
  end

  def save_book
    File.open('./data/book.json', 'w') do |file|
      file.puts @books.map { |book|
        { 'id' => book.id,
          'publish_date' => book.publish_date,
          'publisher' => book.publisher,
          'cover_state' => book.cover_state,
          'genre_id' => book.genre.id,
          'author_id' => book.author.id,
          'label_id' => book.label.id }
      }.to_json
    end
  end

  def save_game
    File.open('./data/game.json', 'w') do |file|
      file.puts @games.map { |game|
        { 'id' => game.id,
          'publish_date' => game.publish_date,
          'multiplayer' => game.multiplayer,
          'last_played_at' => game.last_played_at,
          'genre_id' => game.genre.id,
          'label_id' => game.label.id,
          'author_id' => game.author.id }
      }.to_json
    end
  end
end
