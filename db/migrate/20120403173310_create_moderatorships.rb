class CreateModeratorships < ActiveRecord::Migration
  def change
    create_table :moderatorships do |t|
      t.integer :forum_id
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
