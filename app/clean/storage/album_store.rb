module Storage
  class AlbumStore
    def all_albums
      Album.includes(:genre, :band).all
    end
  end
end
