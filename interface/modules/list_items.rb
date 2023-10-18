module ListItems
  def list_all_music_albums
    puts 'Music Albums:'
    @music_album.each_with_index do |album, index|
      puts "#{index + 1}) ID: #{album.id}, Publish date: #{album.publish_date}, Is on spotify: #{album.on_spotify}"
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

  def list_all_labels
    if @labels.empty? 
      puts 'There are no labels yet.'
    else
      puts 'Labels:'
      @labels.each_with_index do |label, index|
        puts "#{index + 1}) ID: #{label.id}, Title: #{label.title}, Color: #{label.color}"
      end
    end
  end

end
