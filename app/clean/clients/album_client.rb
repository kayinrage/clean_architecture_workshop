module Clients
  class AlbumClient
    def all_albums
      JSON.parse(fake_api_response).map do |album|
        AlbumFromApi.new(album['name'], album['genre_name'], album['band_name_with_id'])
      end
    end

    private

    def fake_api_response
      (1..20).to_a.map do |number|
        {
          name: Faker::Music.album,
          genre_name: Faker::Music.genre,
          band_name_with_id: "#{Faker::Music.band} #{number}"
        }
      end.to_json
    end
  end
end
