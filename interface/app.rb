require_relative 'modules/genres_operation'

class App

def initialize
    @items = []
    @genres = []
    @authors = []
    @labels = [] 
    @books = []
    @games = []
    @music_album = []
end

def show_menu
    puts '\nSelect an option by number:'
    puts '1) List items (books, music albums or games)'
    puts '2) List categories (genres, labels or authors)'
    puts '3) Add items (book, music album or game)' 
end    


def run
    show_menu
    user_input = gets.chomp.to_i 
    case user_input
    when 1: operation1  
    when 2: operation2     
    when 3: operation3      
end   

def operation1
    puts '1. List all books'
    puts '2. List all music albums' 
    puts '3. List of games'
    option = gets.chomp.to_i
    case option
    when 1
        list_all_books()
    when 2
        list_all_music_albums()
    when 3
        list_games() 
    else     
        puts 'Invalid option'
    end       
     
end    

def operation2
    puts '1. List all genres'
    puts '2. List all labels' 
    puts '3. List of authors'
    option = gets.chomp.to_i
    case option
    when 1
        list_all_genres()
    when 2
        list_all_labels()
    when 3
        list_all_authors()
    else     
        puts 'Invalid option'
    end        

end    

def operation3
    puts '1. Add a book'
    puts '2. Add a music album' 
    puts '3. Add a game'
    option = gets.chomp.to_i
    case option
    when 1
        add_book()
    when 2
        add_music_album()
    when 3
        add_game()
    else     
        puts 'Invalid option'
    end    
end 
end