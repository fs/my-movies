class AlbumsMovie < ActiveRecord::Base
  belongs_to :album
  belongs_to :movie
end
