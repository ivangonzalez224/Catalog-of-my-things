require 'json'
require './classes/genre'
require './classes/label'
require './classes/author'

module LoadCategories
  def load_genres
    return unless File.exist?('data/genres.json')

    file = File.read('data/genres.json')
    genres_hash = JSON.parse(file)
    genres_hash.each do |genre|
      @genres << Genre.new(genre['name'], genre['id'])
    end
  end

  def load_labels
    return unless File.exist?('data/labels.json')

    file = File.read('data/labels.json')
    labels_hash = JSON.parse(file)
    labels_hash.each do |label|
      @labels << Label.new(label['title'], label['color'], label['id'])
    end
  end

  def load_authors
    return unless File.exist?('data/authors.json')

    file = File.read('data/authors.json')
    authors_hash = JSON.parse(file)
    authors_hash.each do |author|
      @authors << Author.new(author['first_name'], author['last_name'], author['id'])
    end
  end
end
