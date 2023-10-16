class Item

def initialize(pubish_date)
  @id = Random.rand(1..1000)
  @author  = nil
  @publish_date = pubish_date
  @archived = archived = false
end

def add_author(first_name, last_name)
  @author  = author
  my_author = Author.new(first_name, last_name)
end


end    