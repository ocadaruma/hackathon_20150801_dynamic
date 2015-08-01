class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.integer :song_id

      t.timestamps null: false
    end
  end
end
