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
