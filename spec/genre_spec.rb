require './classes/genre'
require './classes/item'

describe Genre do
  context 'when creating a new genre' do
    it 'should have a name' do
      genre = Genre.new('Salsa')
      expect(genre.name).to eq('Salsa')
    end
  end

  context 'when creating a new genre with no parameters' do
    it 'throws an ArgumentError when given fewer than 1 parameter' do
      expect { Genre.new }.to raise_exception ArgumentError
    end
  end
end
