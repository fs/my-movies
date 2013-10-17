class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.belongs_to :user, index: true
      t.string     :title
    end
  end
end
