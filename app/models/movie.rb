class Movie < ActiveRecord::Base
  has_many :albums_movies
  has_many :albums, through: :albums_movies

  scope :recent, order: 'created_at DESC', limit: 10
end
