require_relative '../classes/game'

describe Game do
  let(:game) { Game.new('2020/12/10', 'true', '2021/02/24') }

  describe 'when initialized' do
    it 'creates a new game with publish date, multiplayer, date of last played at and id' do
      expect(game).to be_a(Game)
      expect(game.id).not_to be_nil
      expect(game.publish_date).to eq('2020/12/10')
      expect(game.multiplayer).to eq('true')
      expect(game.last_played_at).to eq('2021/02/24')
    end
  end

  describe '#can_be_archived' do
    it 'check if the game can be archived' do
      expect(game.can_be_archived?).to eq(false)
    end
  end
end
