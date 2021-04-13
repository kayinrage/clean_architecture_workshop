module Storage
  class Allocator
    def album_client
      Clients::AlbumClient.new
    end

    def album_store
      Storage::AlbumStore.new
    end
  end
end
