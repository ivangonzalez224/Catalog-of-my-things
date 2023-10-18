module ListItems
  def list_all_music_albums
    if @music_album.empty?
      puts 'The Music album list is empty.'
    else
      puts 'Music Albums:'
      @music_album.each_with_index do |album, index|
        puts "#{index + 1}) ID: #{album.id}, Genre: #{album.genre.name}"
        puts "   Publish date: #{album.publish_date}, Is on spotify: #{album.on_spotify}\n"
      end
    end
  end
end
