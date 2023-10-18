require 'json'
require './classes/music_album'

module SaveItems
  def save_music_album
    File.open('./data/music_album.json', 'w') do |file|
      file.puts @music_album.map { |album|
        { 'id' => album.id,
          'genre' => album.genre,
          'publish_date' => album.publish_date,
          'on_spotify' => album.on_spotify }
      }.to_json
    end
  end
end
