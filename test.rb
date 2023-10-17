require './classes/item'
require './classes/author'
require './classes/game'
require './classes/music_album'

author1 = Author.new('John', 'Doe')
author2 = Author.new('Jane', 'Smith')

item1 = Item.new('12/12/2030')
item2 = Item.new('11/11/2020')

# Add items to authors
item1.add_author(author1)
author1.add_item(item2)
author2.add_item(item2)

# Create a new game instance
game1 = Game.new('23/10/16', true, '2023/10/15')
author1.add_item(game1)
p 'multiplayer and last played at:'
puts game1.multiplayer
puts game1.last_played_at

# Create a new music album instance
music_album1 = MusicAlbum.new('1973/3/1', true)
author1.add_item(music_album1)
p 'author1 items:'
puts author1.items
p 'music_album1 can be archived ?'
puts music_album1.can_be_archived?
# MusicAlbum class
p 'music_album1 class info:'
puts music_album1.publish_date
puts music_album1.on_spotify

# Test the relationships
puts "\nItems by #{author1.first_name}:"
author1.items.each do |item|
  puts "  #{item.publish_date}"
end

puts 'Author of item2:'
puts "  #{item2.author.first_name} #{item2.author.last_name}"

puts 'date'
puts item1.move_to_archive
