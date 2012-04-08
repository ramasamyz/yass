class AddActiveToMonitorship < ActiveRecord::Migration
  def change
    add_column :monitorships, :active, :boolean , default:true

  end
end
