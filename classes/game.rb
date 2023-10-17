require_relative 'item'
require 'date'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(publish_date, multiplayer, last_played_at, _id = Random.rand(1..1000))
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && Date.today.prev_year(2) > Date.parse(@last_played_at)
  end
end

game1 = Game.new('2004/10/04', 'true', '2019/03/15')
puts game1.publish_date
puts game1.multiplayer
puts game1.can_be_archived?
puts game1.id
