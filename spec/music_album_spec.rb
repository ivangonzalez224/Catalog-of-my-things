require './classes/music_album'
require './classes/item'

describe MusicAlbum do
  context 'when creating a new genre' do
    it 'should have a publish_date' do
      music_album = MusicAlbum.new('2023-08-04', true)
      expect(music_album.publish_date).to eq('2023-08-04')
    end
  end
end
