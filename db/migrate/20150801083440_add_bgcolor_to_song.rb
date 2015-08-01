class AddBgcolorToSong < ActiveRecord::Migration
  def change
    add_column :songs, :bgcolor_url, :string
  end
end
