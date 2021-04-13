class AlbumFromApi < Struct.new(:name, :genre_name, :band_name_with_id,)
  def band_name
    band_name_with_id.split(' ')[0..-2].join(' ')
  end
end
