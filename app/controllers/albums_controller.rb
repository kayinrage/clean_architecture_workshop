class AlbumsController < ApplicationController
  def index
    @albums = album_service.all_albums
  end
end
