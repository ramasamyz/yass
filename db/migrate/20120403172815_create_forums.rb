class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :name
      t.string :description
      t.integer :topics_count, default: 0
      t.integer :posts_count, default: 0
      t.text :description_html

      t.timestamps
    end
  end
end
