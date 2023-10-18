require './classes/label'
require './classes/item'

describe Label do
  before(:each) do
    @label1 = Label.new('title', 'color')
  end
  context 'When testing the Label class' do
    it 'Checks the label properties' do
      expect(@label1.title).to eq('title')
      expect(@label1.color).to eq('color')
    end
    it 'Checks the Label items array' do
      item1 = Item.new('12/12/2023')
      @label1.add_item(item1)
      expect(@label1.items.length).to eq(1)
      expect(item1.label).to eq(@label1)
    end
  end
end
