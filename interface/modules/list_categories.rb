module ListCategories
  def list_all_genres
    if @genres.empty?
      puts 'The Genres list is empty.'
    else
      puts 'Genres:'
      @genres.each_with_index do |genre, index|
        puts "#{index + 1}) ID: #{genre.id}, Name: #{genre.name}"
      end
    end
  end
end
