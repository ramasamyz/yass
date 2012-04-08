class CreateMonitorships < ActiveRecord::Migration
  def change
    create_table :monitorships do |t|
      t.integer :user_id
      t.integer :topic_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
