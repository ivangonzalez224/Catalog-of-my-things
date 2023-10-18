require './classes/music_album'
require './classes/item'

describe MusicAlbum do
  context 'when creating a new genre' do
    it 'should have a publish_date' do
      music_album = MusicAlbum.new('2022-12-04', true)
      expect(music_album.publish_date).to eq('2022-12-04')
    end

    it 'should have an on_spotify attribute' do
      music_album = MusicAlbum.new('2022-12-04', true)
      expect(music_album.on_spotify).to be true
    end
  end

  context 'when calling the can_be_archived? method' do
    describe MusicAlbum do
      it 'should be able to archive music albums that are older than 10 years and are on Spotify' do
        music_album = MusicAlbum.new('2010-08-04', true)

        expect(music_album.can_be_archived?).to be true
      end
    end
  end
end
