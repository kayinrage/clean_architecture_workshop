require 'rails_helper'

module Services
  describe AlbumService do
    class DummyClient
      def all_albums
        [
          AlbumFromApi.new('Hybrid Theory', 'rock', 'Linkin Park 1'),
          AlbumFromApi.new('Riot!', 'rock', 'Paramore 2')
        ]
      end
    end

    class DummyAllocator
      def album_client
        DummyClient.new
      end
    end

    describe 'all_albums' do
      it 'executes Clients::AlbumClient#all_albums' do
        album_service = Services::AlbumService.new(nil, DummyAllocator.new)

        expect(album_service.all_albums).to eq(
          [
            AlbumFromApi.new('Hybrid Theory', 'rock', 'Linkin Park 1'),
            AlbumFromApi.new('Riot!', 'rock', 'Paramore 2')
          ]
        )
      end
    end
  end
end
