module ListCategories
  def list_all_genres
    if @genres.empty?
      puts 'The Genres list is empty.'
    else
      puts 'Genres:'
      @genres.each_with_index do |genre, index|
        puts "#{index + 1}) ID: #{genre.id}, Name: #{genre.name}"
        puts genre.items
      end
    end
  end

  def list_all_authors
    if @authors.empty?
      puts 'The Authors list is empty.'
    else
      puts 'Authors:'
      @authors.each_with_index do |author, index|
        puts "#{index + 1}) ID: #{author.id}, First name: #{author.first_name}, Last name: #{author.last_name}"
      end
    end
  end
end
