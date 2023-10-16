require './classes/item'
require './classes/author/author_class'

author1 = Author.new('John', 'Doe')
author2 = Author.new('Jane', 'Smith')

item1 = Item.new('12/12/2030')
item2 = Item.new('11/11/2020')

# Add items to authors
item1.add_author(author1)
author1.add_item(item2)
author2.add_item(item2)



# Test the relationships
puts "Items by #{author1.first_name}:"
author1.items.each do |item|
puts "  #{item.publish_date}"
end

puts 'Author of item2:'
puts "  #{item2.author.first_name} #{item2.author.last_name}"

puts 'date'
puts item1.move_to_archive
