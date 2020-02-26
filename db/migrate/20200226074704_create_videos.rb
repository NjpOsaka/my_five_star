class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :image
      t.string :title
      t.text :story
      t.string :url
      t.timestamps
    end
  end
end
