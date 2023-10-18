require './classes/label'
require './classes/genre'
require './classes/author'

module CreateCategory
  def create_label
    print 'Enter the book label title: '
    title = gets.chomp
    print 'Enter the book color: '
    color = gets.chomp

    existing_label = @labels.find { |el| el.title == title && el.color == color }

    if existing_label
      existing_label
    else
      new_label = Label.new(title, color)
      @labels << new_label
      new_label
    end
  end

  def create_genre
    print 'Enter the album genre: '
    name = gets.chomp
    new_genre = Genre.new(name)
    return @genres.select { |genre| genre.name == name } if @genres.one? { |genre| genre.name == name }

    @genres << new_genre
    new_genre
  end

  def create_author
    print 'Enter the author\'s first name: '
    first_name = gets.chomp
    print 'Enter the author\'s last name: '
    last_name = gets.chomp
    if @authors.any? { |author| author.first_name == first_name && author.last_name == last_name }
      puts "The author #{first_name} #{last_name} already exists"
    else
      new_author = Author.new(first_name, last_name)
      @authors << new_author
    end
    new_author
  end
end
