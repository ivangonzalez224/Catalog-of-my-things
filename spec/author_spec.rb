require_relative '../classes/author'
require_relative '../classes/item'

describe Author do
  let(:author) { Author.new('Dan', 'Brown') }

  describe 'when initialized' do
    it 'creates a new author with first name and last name' do
      expect(author).to be_a(Author)
      expect(author.id).not_to be_nil
      expect(author.first_name).to eq('Dan')
      expect(author.last_name).to eq('Brown')
    end
  end

  describe '#add_item' do
    let(:item) { Item.new('2023/10/17') }

    it 'adds an item to the author and adds the author to the item' do
      author.add_item(item)
      expect(author.instance_variable_get(:@items)).to include(item)
    end
  end
end
