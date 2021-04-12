module Services
  class BusinessService
    attr_reader :user

    def initialize(user = nil, engine = nil)
      @user = user
      @engine = engine
    end

    def engine
      @engine ||= ::Storage::Allocator.new
    end

    def current_user
      @user
    end

    def album_storage
      engine.album_store
    end
  end
end
