class CreateAlbumsMovies < ActiveRecord::Migration
  def change
    create_table :albums_movies, id: false do |t|
      t.belongs_to :album, index: true
      t.belongs_to :movie, index: true
    end
  end
end
