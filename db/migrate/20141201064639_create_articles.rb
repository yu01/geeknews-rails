class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :category_id
      t.string :title
      t.string :link
      t.text :description
      # Handling thumbnails
      t.string :image_uid
      t.string :image_name # if you want urls to end with the original filename
      t.datetime :published

      t.timestamps
    end
  end
end