class Song < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :genre
  #attr_accessible :genre_id
  attr_accessor :genre_id
  mount_uploader :image, SongpictureUploader
end
