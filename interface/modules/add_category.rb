require './classes/label'
require './classes/genre'
require './classes/author'

module CreateCategory
  def create_label(item_add)
    print "Enter the #{item_add} label title: "
    title = gets.chomp
    print "Enter the #{item_add} color: "
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

  def create_genre(item_add)
    print "Enter the #{item_add} genre: "
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
    new_author = Author.new(first_name, last_name)
    if @authors.one? do |author|
         author.first_name == first_name && author.last_name == last_name
       end
      return @authors.select do |author|
               author.first_name == first_name && author.last_name == last_name
             end
    end

    @authors << new_author
    new_author
  end
end
