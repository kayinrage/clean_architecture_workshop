require 'rails_helper'

module Clients
  describe AlbumClient do
    describe '#all_albums' do
      it 'returns all albums from api' do
        album_client = Clients::AlbumClient.new
        allow(Clients::AlbumClient).to receive(:new).and_return(album_client)
        allow(Clients::FakeApi).to receive(:response).and_return(
          [
            { name: 'Hybrid Theory', genre_name: 'rock', band_name_with_id: 'Linkin Park 1' },
            { name: 'Riot!', genre_name: 'rock', band_name_with_id: 'Paramore 2' }
          ].to_json
        )

        result = Clients::AlbumClient.new.all_albums

        expect(result).to eq(
          [
            AlbumFromApi.new('Hybrid Theory', 'rock', 'Linkin Park 1'),
            AlbumFromApi.new('Riot!', 'rock', 'Paramore 2')
          ]
        )
      end
    end
  end
end
