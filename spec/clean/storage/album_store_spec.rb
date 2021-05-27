require 'rails_helper'

module Storage
  describe AlbumStore do
    describe '#all_albums' do
      it 'returns all albums' do
        dystopia = create(:album)
        reminiscence = create(:album)

        result = AlbumStore.new.all_albums

        expect(result).to match_array([dystopia, reminiscence])
      end
    end

    describe '#search_by_genre' do
      it "returns all albums with genre's name (case insensitive)" do
        rock = create(:genre, name: 'rock')
        k_pop = create(:genre, name: 'k-pop')
        dystopia = create(:album, genre: k_pop)
        reminiscence = create(:album, genre: k_pop)
        create(:album, genre: rock)

        result = AlbumStore.new.search_by_genre('k-PoP')

        expect(result).to match_array([dystopia, reminiscence])
      end
    end
  end
end
