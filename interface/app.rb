require_relative 'modules/add_items'
require_relative 'modules/list_items'
require_relative 'modules/list_categories'

class App
  include CreateItems
  include ListItems
  include ListCategories
  def initialize
    @items = []
    @genres = []
    @authors = []
    @labels = []
    @books = []
    @games = []
    @music_album = []
  end

  def run
    puts 'Welcome!'
    loop do
      operation0
    end
  end

  def show_menu
    puts " \n Select an option by number:"
    puts '1) List items (books, music albums or games)'
    puts '2) List categories (genres, labels or authors)'
    puts '3) Add items (book, music album or game)'
    puts '4) Exit'
  end

  def operation0
    show_menu
    user_input = gets.chomp.to_i
    case user_input
    when 1
      operation1
    when 2
      operation2
    when 3
      operation3
    when 4
      exit_app
    else
      puts 'Invalid option'
    end
  end

  def operation1
    puts " \n Select an option by number:"
    puts '1) List all books'
    puts '2) List all music albums'
    puts '3) List all games'
    puts '4) Go back Main to Menu'
    option = gets.chomp.to_i
    case option
    when 1
      list_all_books
    when 2
      list_all_music_albums
    when 3
      list_all_games
    when 4
      operation0
    else
      puts 'Invalid option'
    end
  end

  def operation2
    puts " \n Select an option by number:"
    puts '1) List all genres (e.g \'Comedy\', \'Thriller\')'
    puts '2) List all labels (e.g. \'Gift\', \'New\')'
    puts '3) List all authors (e.g. \'Stephen King\')'
    puts '4) Go back Main to Menu'
    option = gets.chomp.to_i
    case option
    when 1
      list_all_genres
    when 2
      list_all_labels
    when 3
      list_all_authors
    when 4
      operation0
    else
      puts 'Invalid option'
    end
  end

  def operation3
    puts " \n Select an option by number:"
    puts '1) Add a book'
    puts '2) Add a music album'
    puts '3) Add a game'
    puts '4) Go back Main to Menu'
    option = gets.chomp.to_i
    case option
    when 1
      add_book
    when 2
      add_music_album
    when 3
      add_game
    when 4
      operation0
    else
      puts 'Invalid option'
    end
  end

  def exit_app
    puts 'Thank you for using the app!'
    exit
  end
end
