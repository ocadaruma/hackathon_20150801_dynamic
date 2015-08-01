class AddBgmageUrlToSong < ActiveRecord::Migration
  def change
    add_column :songs, :bgimage_url, :string
  end
end
