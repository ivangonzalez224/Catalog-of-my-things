module ListItems
  def list_all_music_albums
    puts 'Music Albums:'
    @music_album.each_with_index do |album, index|
      puts "#{index + 1}) ID: #{album.id}, Publish date: #{album.publish_date}, Is on spotify: #{album.on_spotify}"
    end
  end

  def list_all_books
    puts 'Books:'
    @books.each_with_index do |book, index|
      puts "#{index + 1}) ID: #{book.id}, Publish date: #{book.publish_date}, Cover State: #{book.cover_state}"
    end
  end
end
