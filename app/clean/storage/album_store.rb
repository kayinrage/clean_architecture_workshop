module Storage
  class AlbumStore
    def all_albums
      Album.includes(:genre, :band).all
    end

    def search_by_genre(genre)
      Album.joins(:genre, :band).where('genres.name iLIKE ?', genre)
    end
  end
end
