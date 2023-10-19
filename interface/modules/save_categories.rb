require 'json'
require './classes/genre'
require './classes/label'
require './classes/author'

module SaveCategories
  def save_genre
    File.open('./data/genres.json', 'w') do |file|
      file.puts @genres.map { |genre|
        { 'id' => genre.id,
          'name' => genre.name }
      }.to_json
    end
  end

  def save_label
    File.open('./data/labels.json', 'w') do |file|
      file.puts @labels.map { |label|
        { 'id' => label.id,
          'title' => label.title,
          'color' => label.color }
      }.to_json
    end
  end

  def save_author
    File.open('./data/authors.json', 'w') do |file|
      file.puts @authors.map { |author|
        { 'id' => author.id,
          'first_name' => author.first_name,
          'last_name' => author.last_name }
      }.to_json
    end
  end
end
