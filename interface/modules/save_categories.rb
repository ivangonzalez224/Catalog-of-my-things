require 'json'
require './classes/genre'

module SaveCategories
  def save_genre
    File.open('./data/genres.json', 'w') do |file|
      file.puts @genres.map { |genre|
        { 'id' => genre.id,
          'name' => genre.name }
      }.to_json
    end
  end
end
