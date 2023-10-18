module ListItems
  def list_all_music_albums
    if @music_album.empty?
      puts 'The Music album list is empty.'
    else
      puts 'Music Albums:'
      @music_album.each_with_index do |album, index|
        puts "#{index + 1}) ID: #{album.id}, Genre: #{album.genre}"
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

  def list_all_books
    if @books.empty?
      puts 'There are no books yet.'
    else
      puts 'Books:'
      @books.each_with_index do |book, index|
        puts "#{index + 1}) ID: #{book.id}, Publish date: #{book.publish_date}, Cover State: #{book.cover_state}"
      end
    end
  end
end
