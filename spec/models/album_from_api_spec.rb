require 'rails_helper'

describe AlbumFromApi do
  describe '#band_name' do
    it "returns band's name without ID" do
      album = AlbumFromApi.new('Hybrid Theory', 'rock', 'Linkin Park 1')

      expect(album.band_name).to eq('Linkin Park')
    end
  end
end
