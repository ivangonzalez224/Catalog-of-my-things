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

  def list_all_games
    if @games.empty?
      puts 'The Games list is empty.'
    else
      puts 'Games:'
      @games.each_with_index do |game, index|
        puts "#{index + 1}) ID: #{game.id}, Publish date: #{game.publish_date}"
        puts "   Multiplayer: #{game.multiplayer}, Last played at: #{game.last_played_at}\n"
      end
    end
  end
end
