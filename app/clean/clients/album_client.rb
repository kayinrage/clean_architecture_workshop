module Clients
  class AlbumClient
    def all_albums
      JSON.parse(FakeApi.response).map do |album|
        AlbumFromApi.new(album['name'], album['genre_name'], album['band_name_with_id'])
      end
    end
  end
end
