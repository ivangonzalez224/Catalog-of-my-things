require './classes/genre'
require './classes/item'

describe Genre do
  context 'when creating a new genre' do
    it 'should have a name' do
      genre = Genre.new('Salsa')
      expect(genre.name).to eq('Salsa')
    end
  end
end
