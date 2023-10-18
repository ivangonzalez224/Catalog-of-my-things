require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :publish_date, :id, :genre

  def initialize(publish_date, on_spotify, id = Random.rand(1..1000), genre = 'Jazz')
    super(publish_date)
    @id = id
    @on_spotify = on_spotify
    @genre = genre
  end

  def can_be_archived?
    super && @on_spotify
  end
end
