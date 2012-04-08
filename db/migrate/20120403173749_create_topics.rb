class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :forum_id
      t.integer :user_id
      t.string :title
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :hits,default:0
      t.integer :sticky,default:0
      t.integer :posts_count,default:0
      t.integer :last_post_id
      t.datetime :last_updated_at
      t.integer :last_user_id

      t.timestamps
    end
  end
end
