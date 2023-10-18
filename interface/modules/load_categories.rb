require 'json'
require './classes/genre'

module LoadCategories
  def load_genres
    return unless File.exist?('data/genres.json')

    file = File.read('data/genres.json')
    genres_hash = JSON.parse(file)
    genres_hash.each do |genre|
      @genres << Genre.new(genre['name'], genre['id'])
    end
    puts 'Genres loaded:'
    @genres.each_with_index do |genre, index|
      puts "#{index + 1}) ID: #{genre.id}, Name: #{genre.name}"
    end
  end

  def load_labels
    return unless File.exist?('data/labels.json')

    file = File.read('data/labels.json')
    labels_hash = JSON.parse(file)
    labels_hash.each do |label|
      @labels << Label.new(label['title'], label['color'], label['id'])
    end
    puts 'Labels loaded:'
    @labels.each_with_index do |label, index|
      puts "#{index + 1}) ID: #{label.id}, Title: #{label.title}, Color: #{label.color}"
    end
  end
end
