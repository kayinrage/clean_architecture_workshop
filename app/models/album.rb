class Album < ApplicationRecord
  belongs_to :band
  belongs_to :genre

  delegate :name, to: :band, prefix: true
  delegate :name, to: :genre, prefix: true
end
