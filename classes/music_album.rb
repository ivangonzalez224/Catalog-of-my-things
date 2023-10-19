require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :publish_date, :id, :genre_id, :genre_name, :author, :label

  def initialize(publish_date, on_spotify, genre_id, genre_name, _id = Random.rand(1..1000))
    super(publish_date)
    @id = id
    @on_spotify = on_spotify
    @genre_name = genre_name
    @genre_id = genre_id
  end

  def can_be_archived?
    super && @on_spotify
  end
end
