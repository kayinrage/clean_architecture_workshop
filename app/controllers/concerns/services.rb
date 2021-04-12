module Services
  extend ActiveSupport::Concern

  included do
    def album_service
      @album_service ||= Services::AlbumService.new
    end
  end
end
