module Services
  class AlbumService < BusinessService
    def all_albums
      album_storage.all_albums
    end
  end
end
