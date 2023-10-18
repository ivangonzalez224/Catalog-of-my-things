require './classes/book'

describe Book do
  context 'When testing the book class' do
    it 'checks the book properties' do
      book1 = Book.new('12/12/2000', 'Bloomsbury', 'bad', 0o01)
      expect(book1.publish_date).to eq('12/12/2000')
      expect(book1.publisher).to eq('Bloomsbury')
      expect(book1.cover_state).to eq('bad')
    end
    it 'Checks the book methods' do
      book1 = Book.new('12/12/2000', 'Bloomsbury', 'bad', 0o01)
      expect(book1.can_be_archived?).to eq(true)
    end
  end
end
