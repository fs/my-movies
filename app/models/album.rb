class Album < ActiveRecord::Base
  belongs_to :user

  has_many :albums_movies
  has_many :movies, through: :albums_movies

  validates :title, presence: { message: 'must be a string' }
end
