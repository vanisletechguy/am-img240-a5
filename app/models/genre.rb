class Genre < ApplicationRecord
  has_many :songs
  #attr_accessible :genre_id
  attr_accessor :genre_id
end
