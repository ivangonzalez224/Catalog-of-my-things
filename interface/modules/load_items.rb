require 'json'
require './classes/music_album'

module LoadItems
  def load_music_album
    return unless File.exist?('data/music_album.json')

    file = File.read('data/music_album.json')
    album_hash = JSON.parse(file)
    album_hash.each do |album|
      new_album = MusicAlbum.new(album['publish_date'], album['on_spotify'], album['genre_id'], album['genre_name'], album['id'])
      saved_item = @genres.find {|el| el.id == new_album.genre_id}
      new_album.add_genre(saved_item)
      @music_album << new_album
    end
    puts 'Albums loaded:'
    @music_album.each_with_index do |album, index|
      puts "#{index + 1}) ID: #{album.id}, Publish date: #{album.publish_date}"
      puts "Is on spotify: #{album.on_spotify}, Genre: #{album.genre}"
    end
  end
end
