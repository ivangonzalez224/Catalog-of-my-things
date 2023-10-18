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
end
