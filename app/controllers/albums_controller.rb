class AlbumsController < ApplicationController
  def index
    @query = params[:query]
    @albums = if @query.present?
                album_service.search_by_genre(@query)
              else
                album_service.all_albums
              end
  end
end
