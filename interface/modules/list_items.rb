module ListItems
  def list_all_music_albums
    puts 'Music Albums:'
    @music_album.each_with_index do |album, index|
      puts "#{index + 1}) ID: #{album.id}, Publish date: #{album.publish_date}, Is on spotify: #{album.on_spotify}"
    end
  end
end
