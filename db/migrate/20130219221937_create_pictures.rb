class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :artist
      t.string :url
      t.boolean :copyrighted

      t.timestamps
    end
  end
end
