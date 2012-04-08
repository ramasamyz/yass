class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :topic_id
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :forum_id
      t.text :body_html

      t.timestamps
    end
  end
end
