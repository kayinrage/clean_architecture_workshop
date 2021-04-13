module Services
  class AlbumService < BusinessService
    def all_albums
      album_client.all_albums
    end

    def search_by_genre(genre)
      album_storage.search_by_genre(genre)
    end
  end
end
